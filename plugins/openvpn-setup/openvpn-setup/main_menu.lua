
function mainmenu()
m = menu.new{name=locale.caption .. " " .. version, icon="settings"}
m:addKey{directkey=RC.home, id="home", action="key_home"}
m:addKey{directkey=RC.setup, id="setup", action="key_setup"}
m:addItem{type="separator"}
m:addItem{type="cancel"}
m:addItem{type="separatorline"}
m:addItem{type="chooser",
	action="set_startup",
	value=chooser_value,
	options=startup_options,
	name=locale.startup,
	hint_icon="hint_network",
	hint=locale.startup_hint,
}
m:addItem{
	type="separatorline",
	name=locale.daemon
}
m:addItem{type="forwarder",
	name=locale.daemon_stop,
	action="action",
	icon="rot",
	directkey=RC.red,
	id=cmd.init_d.stop,
	hint_icon="hint_network",
	hint=locale.daemon_stop_hint
}
m:addItem{type="forwarder",
	name=locale.daemon_start,
	action="action",
	icon="gruen",
	directkey=RC.green,
	id=cmd.init_d.restart,
	hint_icon="hint_network",
	hint=locale.daemon_start_hint
}
m:addItem{
	type="separatorline",
	name=locale.setup
}
m_ss = m:addItem{type="forwarder",
	action="setup_menu_server",
	value=conf_server:match("([^/]+)$"),
	active=setup_server_active,
	name=locale.server,
	hint_icon="hint_network",
	hint=locale.setup_server_hint,
}
m_sc = m:addItem{type="forwarder",
	action="setup_menu_client",
	value=conf_client:match("([^/]+)$"),
	active=setup_client_active,
	name=locale.client,
	hint_icon="hint_network",
	hint=locale.setup_client_hint,
}
m:addItem{
	type="separatorline",
	name=locale.logging
}
m_sr = m:addItem{type="forwarder",
	name=locale.logging,
	action="logging",
	hint_icon="hint_network",
	hint=locale.logging_hint,
	icon="gelb",
	directkey=RC.yellow,
	active=setup_server_client_active,
}
m:addItem{
	type="separatorline",
	name=locale.routing
}
m:addItem{type="keyboardinput",
	name=locale.routing,
	action="set_upscript",
	value=route,
	size="50",
	hint_icon="hint_network",
	hint=locale.routing_hint,
	help=locale.routing_help,
	help2=locale.routing_help2,
	icon="blau",
	directkey=RC.blue,
	enabled=false,
}
m:addItem{
	type="separatorline",
	name=locale.secret
}
m:addItem{type="forwarder",
	name=locale.secret_new,
	action="secret_file_create",
	id=cmd.secret_file.create,
	hint_icon="hint_network",
	hint=locale.secret_new_hint,
	icon="1",
	directkey=RC["1"],
}
m:addItem{
	type="filebrowser",
	dir_mode="1",
	name=locale.secret_push,
	action="secret_file_push",
	enabled=helpers.fileExist(secret_file),
	value=secret_dest,
	icon="2",
	directkey=RC["2"],
	hint_icon="hint_network",
	hint=locale.secret_push_hint
}
m:addItem{
	type="filebrowser",
	name=locale.secret_pull,
	action="secret_file_pull",
	value=secret_dest,
	filter={"key"},
	icon="3",
	directkey=RC["3"],
	hint_icon="hint_network",
	hint=locale.secret_pull_hint
}
m:addItem{
	type="separatorline",
	name=locale.extern
}
m:addItem{
	type="filebrowser",
	dir_mode="1",
	name=locale.extern_import,
	action="get_extern",
	value="/tmp/",
	icon="4",
	directkey=RC["4"],
	hint_icon="hint_network",
	hint=locale.extern_hint
}
m:exec()
end
