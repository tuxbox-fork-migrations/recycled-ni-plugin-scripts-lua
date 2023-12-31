
if #arg < 1 then return nil end
json = require "json"
local _url = arg[1]
local ret = {}
local Curl = nil
local CONF_PATH = "/var/tuxbox/config/"
if DIR and DIR.CONFIGDIR then
	CONF_PATH = DIR.CONFIGDIR .. '/'
end

function pop(cmd)
	local f = assert(io.popen(cmd, 'r'))
	local s = assert(f:read('*a'))
	f:close()
	return s
end

function getdata(Url,outputfile,Postfields,pass_headers,httpheaders)
	if Url == nil then return nil end
	if Curl == nil then
		Curl = curl.new()
	end

	if Url:sub(1, 2) == '//' then
		Url =  'http:' .. Url
	end

	local ret, data = Curl:download{ url=Url, A="com.google.android.youtube/17.31.35 (Linux; U; Android 11) gzip",maxRedirs=5,followRedir=true,postfields=Postfields,header=pass_headers,o=outputfile,httpheader=httpheaders }
	if ret == CURL.OK then
		if outputfile then
			return 1
		end
		return data
	else
		return nil
	end
end

function hex2char(hex)
  return string.char(tonumber(hex, 16))
end
function unescape_uri(url)
	if url == nil then return nil end
	return url:gsub("%%(%x%x)", hex2char)
end

function add_entry(vurl,aurl,res1,res2,newname,count)
	entry = {}
	entry['url']  = vurl
	if aurl then entry['url2']  = aurl end
	entry['band'] = "1" --dummy
	entry['res1'] = res1
	entry['res2'] = res2
	entry['name'] = ""
	if newname then
		entry['name'] = newname
	end
	count = count + 1
	ret[count] = {}
	ret[count] = entry
	return count
end

function get_MaxRes_YTKey()
	local maxRes = 1280
	local key = nil
	local Nconfig = configfile.new()
	if Nconfig then
		Nconfig:loadConfig(CONF_PATH .. "neutrino.conf")
		maxRes = Nconfig:getInt32("livestreamResolution", 1280)
		key = Nconfig:getString("youtube_dev_id", '#')
	end
	return maxRes, key
end

function getVideoData(yurl)
	if yurl == nil then return 0 end

	if yurl:find("www.youtube.com/user/") or yurl:find("youtube.com/channel") or yurl:find("youtube.com/c/") or yurl:find("youtube.com/@") then --check user link or channel alias
		local youtube_user = getdata(yurl)
		if youtube_user == nil then return 0 end
		local youtube_live_url = youtube_user:match('"url":"(/watch.-)"') or youtube_user:match('feature=c4.-href="(/watch.-)"') or  youtube_user:match('ytimg.com\\/vi\\/([a-zA-Z0-9_$%[%]]+)\\/default_live') or  youtube_user:match('ytimg.com\\/vi\\/([a-zA-Z0-9_$%[%]]+)\\/hqdefault_live')
		if youtube_live_url == nil then
			youtube_user = getdata(yurl .. "/streams")
			youtube_live_url = youtube_user:match('"url":"(/watch.-)"') or youtube_user:match('feature=c4.-href="(/watch.-)"') or  youtube_user:match('ytimg.com\\/vi\\/([a-zA-Z0-9_$%[%]]+)\\/default_live') or  youtube_user:match('ytimg.com\\/vi\\/([a-zA-Z0-9_$%[%]]+)\\/hqdefault_live')
		end
		if youtube_live_url == nil then return 0 end
		if not youtube_live_url:find("/watch") then youtube_live_url = "/watch?v=" .. youtube_live_url end
		yurl = 'https://www.youtube.com' .. youtube_live_url
	end

	local h = hintbox.new{caption="Please Wait ...", text="I'm Thinking."}
	if h then
		h:paint()
	end
	local maxRes,key = get_MaxRes_YTKey()
	local data = getdata(yurl)
	local count = 0

	if data then
		local newname = data:match('<title>(.-)</title>')
		local m3u_url = data:match('hlsManifestUrl.:.(https:.-m3u8)') or data:match('hlsManifestUrl..:..(https:\\.-m3u8)') or data:match('hlsvp.:.(https:\\.-m3u8)')
		if m3u_url == nil then
			m3u_url = data:match('hlsManifestUrl.:.(https%%3A%.-m3u8)') or data:match('hlsManifestUrl..:..(https%%3A%%2F%%2F.-m3u8)') or data:match('hlsvp=(https%%3A%%2F%%2F.-m3u8)')
			if m3u_url then
				m3u_url = unescape_uri(m3u_url)
			end
		end

		if m3u_url then
			m3u_url = m3u_url:gsub("\\", "")
			local videodata = getdata(m3u_url)
			for band, res1, res2, url in videodata:gmatch('#EXT.X.STREAM.INF.BANDWIDTH=(%d+).-RESOLUTION=(%d+)x(%d+).-(http.-)\n') do
				if url and res1 then
					local nr = tonumber(res1)
					if nr <= maxRes then
						url = url:gsub("/keepalive/yes","")--fix for new ffmpeg
						url = url:gsub("\x0d","")
						count = count + 1
						add_entry(url,nil,res1,res2,newname,count)
					end
				end
			end
			if count > 0 then
				if h then
					h:hide()
				end
				return count
			end
		end
	end
	data = pop("python /usr/bin/yt-dlp --dump-single-json " .. yurl)
	local itagnum = 0
	local urls = {}
	count = 0

	if data then
		local jnTab = json:decode(data)
		if jnTab ~= nil then
			for k,v in pairs(jnTab.formats) do
				if v and v.format and v.quality and v.url then
					itagnum = tonumber(v.format_id)
					if itagnum then
						urls[itagnum] = v.url
					end
				end
			end
		end
		local audio = urls[140] or urls[251] or urls[250] or urls[249]
		local res1, res2 = 3840, 2160
		local video = urls[628]
		if maxRes < 2561 or video == nil then
			video = urls[623] or video
			res1, res2 = 2560, 1440
		end
		if maxRes < 1981 or video == nil then
			video = urls[270] or urls[137] or urls[617] or urls[614] or urls[248] or urls[616] or video
			res1, res2 = 1980, 1080
		end
		if maxRes < 1281 or video == nil then
			video = urls[22] or urls[232] or urls[136] or urls[612] or urls[609] or urls[247] or video
			res1, res2 = 1280, 720
		end
		if maxRes < 855 or video == nil then
			video = urls[231] or urls[135] or urls[606] or urls[244] or video
			res1, res2 = 854, 480
		end
		if maxRes < 641 or video == nil then
			video = urls[230] or urls[134] or urls[18] or urls[605] or urls[243] or video
			res1, res2 = 640, 480
		end
		if video then
			count = count + 1
			add_entry(video,audio,res1,res2,"",count)
		end
	end
	if h then
		h:hide()
	end
	return count
end

if (getVideoData(_url) > 0) then
	return json:encode(ret)
end

return ""
