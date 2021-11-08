function createImages()
	if (conf.guiUseSystemIcons ~= 'on') then -- integrated icons	-- no NLS
		btn0Data	= 'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAmNJREFUeNq0lUmqIkEQhsN65YTijCsXulEv4MJ7vD6AR3hn8BK98ADtohd9AHEnuBBERBeCgoiCGwecx84/+kWRVWV3r15AmFlVmV+MmXqezyd9hZj4qdfrPzwez/ubEjVaH2EU+ng8WO/3O4+32431er3yeLlcZH5S8+/VavXD+GR8U8A3HQiAEwoFSEanKmhAGXi3PFYAQyDiMea8wDQpkUiQ3+/nzdvtlhaLhc1rqHit1LDA8ABgQKGSAkDz+Txls1kKhUJsbL1eU7fbpV6vZwFFxRjEEO/0UEVTqRQVCgUKh8NsUJWAkskklUol8vl8NqhuxObxq6Llcjnyer10Op1oMBhQMBjkCCKRCEeBlGiFc3usv5ScQdPpNC9arVYc+nA45BxDAD6fz64cC9gUsLMjkFPD+NM0h8OBlssle455PB7n9EheBSjpdIH1NkPhJD34DiDSIhvRKc4U/BUsPQsw3smpxDsJW9oQ4gRLE9jA+mGASnUFLBUXMNbjWT80LjAsC1jC2Ww2lscCkXUQeZb1L8G6RZmjULIIpw7FDAQCPIfM53MLLEAYtYElJD0s6Gw2o2KxSNFolDKZDB+YWCzGG0ejkQ0stZGI/glut9t8INDPlUqFN8BzrO90Oi6wLobk2Hnuoa1Wi/r9Pn8DELrf76nZbFp3he6Iq93EsvMaRO/WajUql8ucBrybTqfUaDToeDy6wodI75uvjrR4gfl4PKbJZML3BJ53u53Vz3rXCNQJfig1nA2vhwnv9T7XPZUrV9reyrHa+PMTTv9TZ9/qRpSe1P3yi73/qj/T3wIMACfohDWeoqk8AAAAAElFTkSuQmCC'
		btn1Data	= 'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAfpJREFUeNq0lT1uAjEQhWdNECkQDRQgCkRHRUPFPchBcgYukSOEIkXOgERBS4MENBQ0FIgCWP7jZ/GsWbMkabA02GDv57fP4yG6Xq/yjPaCj16v9xlFUSdjm+39JDZFXC4XF+fz2fWn08nF8Xh0/eFw4Di2449ut/tubow3C8xoIAAhFAEQ+zAs9NVu0PGKLcAQQsUYswcon89LsVh0v00mE9ntdl41gqptGA/GgwADiqAF3MwYI7VaTZrNphvP53NZrVYeyKByD+ZrU62GopXLZanX6w6KplUy+FsCDMVph4aoVqvSarWkUCj4eQD2+30Cqr32YHxJU9toNKTdbks2m01sDBjB2mcecAIcZgQCQMRms3FzOECCta9U/BCs0wwLttutzGYzGY/HUqlUnCW0Is2Ch2AqJXg6ncpoNJI4jqVUKiU81lnAYGomwNoCLlgsFm4ul8v5B7he+0q1d2AsIJivo28XDk6DCdUHlgrWO2qvOLYl5E4xrdBAWujBWBTC9HdcDF4W7bFWyrNhtfwVTCtCxUw1XfH0xgmPNYhgplOaFZjTSv8FTkuj4XAo6/XaQZbLpQfr10fjDfWHFxZvrRglcjAYSL/fT6QkgexZHTX4YsOENyk8yBCqwaqWOE/Mrbp93eDyV6RtpKphbDPo26l/1p/pjwADAJbsnaA8kjfJAAAAAElFTkSuQmCC'
		btn2Data	= 'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAmtJREFUeNq0lbuuqUEUx5dvi+0aEgoFCSIKdCJRCY1Cvc+DnGfwEucJ5Iic4tBQSBQKVAqNTqISBSLutzNrZa/Jcju72pP8zeCb31rznzXzma7XK3xHM+NHpVL5bTKZPt5UU73+E4OiLpcL6Xw+U386nUjH45H6w+HA450a/yqVSj+NT8YPBXyTQATcQ1EI4v5eCmpVAT50xgpgMIQzxjE2q9UKHo8HLBYLATebDUynU9jtdjprFGetZGgwTkAwQlFsgc1mg2QyCX6/H+x2O/2G4MlkAu12G9brNQFZnDk2g7OTS2WFQiESQrFhUIfDAbFYDKLR6A2Us0Zp8DMoKhKJgGEYsN1uodvtQr/fpzH+lkgkYL/fk8Tm6YzJCvzC3rINTqcTVJFQwNlsBoPBgHwOBoNkEf6PUOkzJ3gDvq+I5XIJtVqNssMA8/kcAoEAmM005cZXzvYlWJYZ7vpqtdIT3t/fyVu3203P4grk8v8L5ppFsPQcl55KpchXtAOz7/V6D2AughuwPAz8AHuPmabTafIVS6zZbMJ4PCYr5KF5AGNkBvNyWPF4HLLZLLhcLoI2Gg3odDq0cXLDnoJlROkVnrpisQher1dDW62W9v4+U7ZQg3lJclmofD4PPp+PHsT6xQCFQkGfwGq1qsG8N3xbvgRjWWUyGV2GGCCXy+nvi8UCyuXyDfjh2mSv5PLC4bA+yq8azpO34JdgFB6Qer2uLyWeyGO0hjddviz4BOvNu7+8R6MRDIfDhw2SJclA7vl2lOCLknFf8HIjn0ElWLx5LvJ2+/MJh6/0LBAHUdqpu+UvZf9dL9N/AgwAYHFxVis/3OkAAAAASUVORK5CYII='
		btn3Data	= 'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAotJREFUeNq0lUmKYkEQhsNXWjgsFAWHjfOwUVdewCMI1QfphSfwEn2EdtFIb905IIKgCILiAK4ccCHiPPeLwHikaRW9qoCoTOs9v4z8489Ud7/f4TtCj3/y+fxvnU738aaGOmoPcVHM2+1Geb1eabxcLpTn85nG0+nE84M6/5XL5X4qD8YPFfgmAhEgQzERxKOcKtSoLvChVawCFIZwxTjHMBqNYLPZ4P39narabrcwnU5hv99rVWNy1WoqGhgrQDBCMVkCk8kE8Xgc3G43mM1mem+z2cBwOIRKpaIBOblyDIWrE7fKGQ6Hwe/3ExRDbQFYrVZIJBLgcDieoOIiGvgzqF6vJ6iiKLBaraBUKkG326X3UBaXywXH45FSaJ5WMUmBH1hb0Qnlchk8Hg/p2W63IZlMQiAQoMoPhwNBRZ25wCew7AjMwWAAvV4PDAYDAWOxGDVzvV5Dp9PRdOVqvwSLNhM9i65IpVJUPUaj0YDFYvG0fRmsMFjcEidrKD7HwKbiIvL7L66QoWK3MWezGRSLRajX6+Rjr9cL6XRa9O5T5ZoU+IBl4O2ILtntdrT1+XwOPp8PLBYLBIPBp4axdC8ai5riHA8HNgs9jIeiVqtR09inaEcGM5B7o4HxZfkucDqdkMlkCDwajcghoVAI7HY7fXE8Hj+Buel8W34J7vf7pG0kEqFmZbNZsh3KwB6XwWIorPFnTSsUCnThYBVoOYTiwWi1WnQSZf+++JhXlq/BZrNJYzQaJQnQepPJBKrVKiyXy5ftY/AJ1os+lk8RzrFpaDOuFhuJ/2coHyyGyuCbmorsR14AZUH/spZypXzlPuIm3m5/HnD4X8q+FRdR86Dehn+p+u/6Mf0nwACbIpf8/f1PBQAAAABJRU5ErkJggg=='
		btn4Data	= 'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAldJREFUeNq0lbmKKkEUho89boiCuCCo4AJiYKhGvoLhDD7HfQYfwHQeYQxucFNDxcjESAwUEVHQxEDct1t/MaeoLpWJpuGfaqetr/6z9NFxv9/pNy4n/jSbzS+Hw/H+Ji6xqoc4FLrdblLX61Wul8tF6nw+y/V0OvH9Qdx/1uv1P9Y340MA33QgACYUAohXUwLqFQe8K8cCYDGEHeOeV4Asy6JoNEo+n4+22y2NRiPlGmLXQpYCYyPAgEKcAj4Mz2OxGJVKJQqFQrRcLmk4HCogi50rMIfNbs3cer1eSqfTFAwG1XMTys5tYDh6VTSs4XCYUqmUTAcbAex4POqFe3SMD6/c+v1+KhQK0rUeFaCQnmcusA1sdgQXL5PJUCKRoNlsJqHJZFI55ryyYx1sMZi/wKFhDQQCsmD7/Z4GgwEtFgt1uJlXMxUPYBaucrlMLpeLJpMJ9ft99X8unqmnOdZTAOVyOcpms3Q4HGg8HsvnbrdbbhIvqOyQ3W5nSwO3pnKsn8rVRl4B8ng8VCwWqVarUT6fl5sikYj8DPirVCjH+hzQ28/pdFI8HrcNGByGvoZzgNkporJ1BVyaswApQKjYzBMQESDnAOG1RmQM5p7n774Et1otarfbygVUrVapUqnQfD6nRqNB0+nUBn4Ym9zcnCPcYx6YhVmv13ITosEQwqpPwR/Bpthxr9ejzWZDq9VKQrFPDx+Xqo3ex+ZbZDrudrvU6XRsOeW+ZqgJvglZz1qH3TL8WaH0GYIZpfpYbPr7Daef9OwgbX4fxAT8J93/1o/pfwEGADhQgqy3TrYAAAAAAElFTkSuQmCC'
		btn5Data	= 'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAohJREFUeNq0lbuKYkEQhsszI14RLyAiGCloIgaGpmaC0cyDrK/gSxj4ACuywSamYjQIgg6CiiJeUFFUBB3R8bqniqmmPbq70TSU3adP91d/V9VpddfrFb6jPeNPLpf7qdPpXp7UpvbiJTpFu1wuZOfzmfrT6UR2PB6pPxwOPN6r40w6nf6hfDFeVeCTDESAFoqGIO61pkKNqoMXoVgFKAxhxTz2eDzCASvGfrPZwGg0IqVorFo1RYBxIW5GEBqHwGw2QzQavQkN9/1+H3q9HgHZWLkA87FZLYMNBgNYLJaHyTEajTdQVn4DRsWPkoab+T0e/fPzU7xfLBb0LCXuXjE+aNXiKUwmE80tl0soFosE43judjsCc3WgcYJvwNqKQLNarTSn1+shFAqB3W4nYLlchkajIeLKiv8KlssMF2DysDkcDjJufr8fMpkMNJvNmxDIYIXB8pHYUCk2VNnpdGA8HtNGnI/H43frH8ZYDgHX6tvbG9hsNoplq9WicTKZBK/XCz6fj0I1n8+FWt4nwOhN/gjYKpWKSOZ+v6c+FosRGJONoZKTdgeWPfIYKyIcDlM/m83IiRxDdPLx8UFgBnJuBBizq70L3G43JBIJUtXtdmEwGIDT6aR5bKvVCobDIa3n8PHp/glut9swmUwgGAxCIBCAVCpFScM4I6RUKol9DJabwjHmwpctn8+TUlThcrkIivO1Wg0KhcJd/d7VMSdAew3W63XIZrMQiUQoDLhmOp3SV4hx1x4fG3/Bz3Ida78iHFerVXh/f6fLCJ/X6zWpZqh86/HtKIMvqinay4QdIGi73d7UuaxUvhnxshQxVjf/+oLD/0yOpdaJantFUX6T+u/6M/0jwABqCHsB7nuGcQAAAABJRU5ErkJggg=='
		btn6Data	= 'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAp5JREFUeNq0VU1rIkEQLScSlYhGjQgeVBQ8KJ7Eg/8jOfsb9jfkT+xdD+thhb0LgpCLCCI5ioaoB4OCH4kfMWq2X5EaeiZZ9pSCstuentevXlX1ON7f3+k7zImfarX6y+FwXJ8pU6P5EIfCT6cT+/F45PFwOLC/vb3xuN/vZb5T85+3t7c/jA+MGwV4pgMCwA4KB5CMdlegbnXAtclYARgCIowxh+F/MBiki4sLnm82G5pMJrTb7UzWcGGt3DCBwQDAeBEuEsASiQSl02m6vLwkpRSt12sajUZUr9dNQHFhDjOEnR6qOFjmcjkKhUIMCsMaDkomkxZQ/RAT+CtQeCwWI6/Xy5u73S61223abrdkGAZlMhl6fX1l15JnMmYp8Ee01SshHo/z2nw+p/v7e1qtVjQejxlsOBzyqOssBC3A9opwuVzkdrt5TRhdXV0xY4BPp1NTV2H7T2C9zPx+P4cMwyGFQoHDx1q/36dyuUwvLy8W6XRgQ4D1kISBVEY4HKZUKsXrMMyLxaJlv11jE1jfoGcX9vz8THd3d9RoNGixWPBaPp/nSrGDWpKHByKDhLNcLk3Gs9mMms0mh46EoqY9Hg/5fD5OrLwj71s01u8BzNFZsgnZR0WAOeZiqCSQEkAQsWgsoUtdwpH9Xq/Hm9DS0BVdCLbyzuPj4ycp5Cpwyib7JQNH+NlsliKRCJVKJQYIBAL8IhoGEUikAihmiMb2vod3Oh1OGi4e6InWRriDwQBX7af6/VTH0jVfXYWVSoUeHh4oGo3S+fk5N0ar1WKZRFf9YyEd7NTr2N5FmD89PVGtVuMmQXmhWpADaSRpLAG1A5+UG/Z61MNEMkVLAdWBtS/PSb/dfn+A0/9c19J+iPKdavk/zP67PqZ/BRgAkdV3SHE9dK0AAAAASUVORK5CYII='
		btn7Data	= 'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAjBJREFUeNq0lUuKIkEQhsNqlUFxo/jEhScQBI/Sc5A5g5eYI4zCLAbBE7h1I4IudKkovlDx/Zr8A6OIyqruXnVCdKZt1Fd//hGZhp7PJ33HCONPvV7/EwqF3t/MMLP7JV6KeDweHPf7nefb7cZxvV55vlwusj6Z9e9arfbLeTF+GuCbBgJgQxEAyWyHgf4wL3h3FRuAIxBRbMRTKpXyvEgUY4bK0WjEShGi2oTjgpGIhwFFYB2Px6lcLlMkEvFYI/PhcKDBYMBACVHugmXbola8jcViFI1GA4vjOI4HKso9YCi2i3Y6nWi5XLqK8T+sE4kE2zQej+l8PuvC+RXjg612sVhQq9XyeFutVqlSqTCo2WwyWLoDIQX2gO2OsLshnU5ToVCgcDhM7Xab5vO566so/hCs20z3LPwsFouUzWZpu91Sp9Oh4/Hos+BDsKgUsDyQTCapVCqxx8PhkFarlacLJGSHHnCQBaICBYMNWKPFoFr7Knk+MBL0IdCnDB0AKFpvvV7TZDJhG8RbnR+oWHuqwQBmMhlOnk6nDNc2aKBY6IKRaN8FEjiBuVyOk2ezGYPRZrZSqY2czk/BYkU+n+fk3W5H+/3ezdc9jvBdm7oIQVbIwEncbDacrwst9fkSrF8AWKPR4Ae73a5rQ9D2MeQEu8WzL288jHW/36der+fbtkD1rSe3owY/TDj2SbILaUM1WF1i7Inzut3+vuD0VXzWDSZO5vj/Y/Xf9WP6X4ABAM3QorwdIM9SAAAAAElFTkSuQmCC'
		btn8Data	= 'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAApZJREFUeNq0lc1OIkEQx4tRviSKfMRIwoGgcoLIDR7EfQpP+wy8xD7CctjDXrxwMRwQJBLgRgJRTnzIAQVRQGDnX7E6zYDryU6K7qF7fvWfqpoa22q1ou8Yu/jJZrO/bTbbxY45zFltwilsuVyyLRYLnt/f39nm8znPs9lM1m/m+lcmk/lpfDB+mMAdHQiAFQoDSGarmVCX6eBCKTYBhkBEMdYYLpeLDg8PyeFwsKqXlxfqdDr0+vqqVMNEtWmGAkMBwIDCJARut5vi8TgdHx/T3t4enxuPx9RsNunm5kYBxUQ5hiHq9EcVi0QibIBimCkgr9dLiUSCQqHQGlR3osDboLBoNEqGYdBoNKJ8Pk93d3c0nU45LGdnZ7yGaclTijkUuJDY6pWwu8vbHNf7+3s6ODhgZ06nk/cA1eMsAtfA1oqANRoNSiaT5PP5eAZwf3+fz9frdRVXUfspWC8zHKhWq3RycsJKz8/PlfNWq0W1Wm3t8f8LFqUCRlXIHiAYdrud96DeCpYiUMnT4yTZxYF0Ok1+v5+enp7o+vqayuUyTSYTisVilEql9Npdc6DAViiSghI7OjriQ3ghcrkcV8ZgMOD/EPNt0I2q0PsA1vKyYMDRcDjkOpY6hWOpBAmBhFCB5dH1XvD4+Ki8BwIBOj09pWAwyKHB6Pf7a2DJjXTLT8HoBe12m1/pcDhMl5eXfIPH4+H59vZ2A7zRNuWAtWyurq5YLWItQIh4eHjgPdynd8EvwWKVSoVnVAFCgDPdbpdKpRL1ej0VV/1jIXlRybM2b9yEdaFQoGKxyIpx/fz8zKpFqbxYArWCl6YZ20oHDgBCv5BYWhMlLfdjLPXu9ucDTl+ZxH9bNZj2ZnbDv6z+uz6m/wQYALMBafYZ0PeWAAAAAElFTkSuQmCC'
		btn9Data	= 'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAApFJREFUeNq0lT9rImEQxsfNqkdQJEYTjViIFilsbGyt0+c+hdWB3yBf4uqAcCJXnIW9IIIiWCiIhYUIQSIGo6LGv7fPkFneXXOXKgPju7q7v5l53nlHx/F4pK8wHR+FQuGXw+G4PzPMWM2bCAo/HA7s+/2e191ux77dbnndbDZyvTaufz48PPzQ3hnfDeCZCgTADoUDJKvdDeg3I8C9mbEB0AQiGeMa5vF4yOfzkVEMZzaZTGg8HluyhkvWhmsmGBkADChcJAAwlUrR5eUluVwufhHQZrNJ/X7fBIpLMJgm2amliieTSQqHwwyFOZ1Ourm5oXQ6TZqmWaBqEBP8ERQSXF1d8UPIslwuU7fb5eeur68pFArR29sbu7J51oxVoGh2cXHBuuK3p6cn6vV6DJ7NZixXIpFgqF1jAesCtneEbB4MLwHy8vJC6/WafwsEAqauApTKT8Bqm72+vvKq6zoFg0GWJRqNskQwv99vKf+/YMkUwOFwyHBAsWF3d3d0fn5OXq/XrMQOliawaCxaiV7T6ZSq1SrfQ1dgw6Avgkl1Su9aApgZ44bIIOXAW60WaxuLxRiIw5HJZLi/5/M5v6c+r2ZsSqHOAbX95DA8Pz9zAPSvtKCABYjkLGCUZJ8F0DObzVIkEqHBYED5fJ7i8ThvGqzRaFjAsjcyLf8JXq1WXC70BTCXy/HJw3foX6/XT8AnY1MesLdNqVTiE4ZWkzaDJMVikUajEb+nTsFPweKdToceHx/p9vaWpVkul9Rut6lWq/FBsZcPk+mof3SkJWtcVyoVBrndbgYvFguzfAHKKtNRBR8M1+z9KAHQcmg30dKeqYzcdzuo0+33O5w+c3vfqkEMXxvt+Iez/6o/078CDACn6nyPx82ZegAAAABJRU5ErkJggg=='
		btnBlueData	= 'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA5lJREFUeNqMldtrE0EUxs9uNm1NjLVNgy3ipQ0KoQ8VUSsoiKAvSlF88PIgFEEF8UX8L/rQBy0IYkQLXl9ERFS0ii9SsSK2pVVEUmlMadM0t01M0t0Z98t6zFQqOvCxs7Mzv/PNmctq9NcidaKp/V6v/0A4XL95/XpPq65LmUiIuYmJ8ifLyj8i6nhJpEn6/xI/uWuXOXbjhhCzs1IWi1Jms1LOzUkZj0s5MiJlX58turvz74m+H1uOoC19jTW0tASi/f3BE4cPk2ZZRIuLROWy+6xUXOEdKpWIhoaEiEYzN5PJ0TNEe61lwF/qw+HQs8HBxj0bN7ogFmAqmOEAQ9PTRAMD6SczMy96iI7aS8AtLanbg4PNJ9rbXQi7VZ/sXHUM/fhBlEhIikZTV00zdBY8/VdOey9caDoeDBKlUkTpNFEmQ5TNusrl3Gc+v1TcDkmp0c6dzacc/0dANIjue7Zsaby4bZumLSwQ2bYrIWp1uGXnquNi0XWLJwI1NupGKLTqYjIpHzjg7T27d/s74RIwSEpXKhxisJoCQAuF2gxWr/Z3J5NTewxnn+4LhzUN4OruVXYlB1Cdqwungk3ThVuWx2MYvoPGmjV1m3hq2q+l1PVaHYVnAggMAKRuQdTRBseoe71Gu+Hzac1YKMBYHk+tzs55wRCA+6i7BTNCW10dnnrQcBJtDw8TRSJE9fXuR6/XWVWjBsC0AfT7aylBOwfFN7QB6oJJMzwesTA/TzQ+TtTaStTURLRixe8O1ZQgCIKiAIzpo52hcM5QmHKYKUNKewoD0RF5gksMhjufj6ihwYWiDwqccX9eWM41oJAQVkwvlwtDui6qndHIkQEDFAFWriQKBFyhrgZkl5w+J7RdKplPddOMPcznzQ9oZHEApAQCjKXO5E8oZJrmcKnUMaTjRsrlClekFFIFQ3AEMEDsGGB2y0CsBSSEbWWzxcu4o6sbana27Vo8nrmrbjcOAADA7BiBloNiXCKRdq7PtfeUS0iTk5Px09++ZV7z4eABGIwpcwpQZyD3hWKx9LPJyblzfKj02vnqKrx58/XA2NjCnUpF/D7YPJAD8TufzErFFqOjqetv36YOEXVW/vIHqW55rasr0RuJ+M/v2BHY2tamO7eWmwYU3Ak4qTMztvOLKrz7+DF3aWJi3a1//JrU8sqIRNp7Ojt9+0IhY0MgoAedfStzOZGan7emxsfN558/jzzmP8af5acAAwA/KhwC9h6nKwAAAABJRU5ErkJggg=='
		btnGreenData	= 'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABEVJREFUeNqMVV9oHEUY/2Z29v6fOTdwlHCHDSbHgZS2PvWtkdYUT9I+JVBEKRQVRJ8K9kEKPudRQV/U0ofDP5UGEY2pVKvUEriHQkuSWkg9DKW6yW3O3N3e3u3OjPPN3l5abcWZ++6b3Znv9/3mN9/uEnhcexdoebL8PI3RSiFbKI0lx/YQQqTt2fZd5+5tEpCvV19a/QEIyEeFk0fdLFVLLx8YO/D27NOzz0zlp0iGZcCXPvRFH3zhw2ZvE65vXpeXf798Y81em187ufb5fwLvPb83kR/Nf3z24NmTx/YcI4EMHgLUfnDd533tr9nXxKX1SxfS2fRrV5+7GvwLeOLbiXhRFpfmD80fLqaKGmBo4gGvrCd6oec9neB+9z5Ub1cXi15x5uLcRY54LAK2fOv8uUPnDudiOXB8BwLVMVh7+TCwZqwMgdEIJTA9Pv3Cwq8LHyio1xHPwL9ytXzq9P7T75SeKJEO70BXdMEVrvae8HY97w7n0DqiA7geDROaprm/N91bcb501tjsF7NG98numX25fWQ72NYMuepCCuCS6zH6QOwyRymQMSbpyt3k6USajaRHzqg6WTDkcXniyMSRt6yERXARLsDAnuyFADLcsvZyAIhg3AuZcxfasg3tIDS1biz5S/JnBmk4WkgXyDbfBkHEsEIkdqn/NWOhOlZJpC+y1OA8lKUlWtp71DNkTL7IcvHcpOKm9QvLZNAJ0aA4RlCUBkGaQVNriuCYCCXypKf13hE7oPYMhJFxFjfjFi4Gqn6Egu4ktCgJtlbQgjZv6wQGdmIMNcckeB+rgxkMhClGmXqKeK1Vg8n0JMRpXAcwwrTHjglQa2SdMlLhQSqmVNBh0kgmncjwMYYwFexs+VsQtAPIx/OQYzlI0iSY1AyZKwCDGhCjMQ2CwFhauLPoOiAKlCjmpK8ZK99gKmkdGWJy1BADuMHVmaYhaSQhbsQhZsT0DrChprgezwCZ6kSKqSlNMIUZznHyG4UOXDFkuH2TmJopskNDaRIsAUmWhBRLhd5MQcJI6Dk0XI9xGM+oklAYXHjiO2blra94h99gcXZQT0YJlCFbBEHDoIgxahtJEpFhIjyXwA2Wb83dukLxjeS3/Q+JIBI1HYLTMECDK9bIVLNVY5QGTQPiQQ+qREkQ9N3++/iO1iewfHz5o53mzmc4GZUbjiNwZBxJoTVXMultkxAwKtOm07xQm6npdzMdPBXSvme/2nAaP+GhPFjLWBEIorU2wmoZgg1qHddvOVtLdtN+I3pyaTS4+crNzsZfG5WNPzY+VTrKqEajpzBKpu8TGNZwEASi/mf9k9XO6omVuZX+4z9N6imuLFVOjY+Ov1nOl5+1UhZkzayWAZsbqJeO34aG25B37Du19c319xYri9X/9c3DNvXjFMu0MzMFq3B0JDHyVCaRGcXXkuu5jWavWa879e+zbvab6Ivxz/a3AAMAiiOemnSNaJYAAAAASUVORK5CYII='
		btnRedData	= 'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA7dJREFUeNqMle9rU1cYx5/7I60mxtimwZYxZw0KoS8qw1lBQQbujaNM9mKbLwYiuIH4RvwvfOELFQZjGVrYpnszxhAVV2VvpLKMYVvayRipNKa0aZpfNzGJ956z8703T3LqurEDX+65557zeX6c59xj0L80SWQuEb0XCYVO9ieTB6w9e4alaUqRz6+1Fhb+qLnuT/uIHhr+1P/ZckSfOkePzokbN4RcXZWy0ZCyUpFybU3KXE7KTEZ6ly+L2sTEby+IPt6KYegvWaJt0aGhdPzKldN06pRBrkv06hVRqxU82+1AeIeaTRLT06KcTt+cLRQ+e5fI/Qf4T6L+RDJ5PzY1dZz27g1ALMB0MMMV2NfyMpWuX7/788rK5EdE3iZwcWjo28GpqdM0OhpA2Fv9yZ5rHvt6+ZJkPk/FdPrLhON8Dp7ZyemZgYsXP6F4XFkoEpVKROUyUaUSqFoNnrXaZvG4kiElDR45cnaZ6EMw7e+JrNjBg5eMQ4cM2thQgXiBhOj14S17rnvcaPje+k9lyIzF7J2JxCVZKPxgv0M0GTl2bMz3EjBIWfelwyEGaynwofV6N4LIrl0TS4XCcVvV6QkjmTR8sF/AWlmyAd1zfeN0sOP4cMt1rbBtv2/37d69vxua0dlL0+z10TgSQOAAQHoJoo8x5Fz17VBo1DbC4UF/owBjWVavz57zhsEAz9GrBRFhrK+PTMuK2yrRHs3MEKVSqpL7g4+hkNpWuwdA2ABGIr2UYJyN4hvGFNSXZRm2sKwNWl8nmp8nGh4mGhgg2r6dJwQpgREYRQMY4WOcofCcocopxSzanpRL/kJMRJ7gJRbDu3BYHfJtARRz0OAZz+eN5VwjUiVXiKxZb7WmBWCYjA9sGTBAYWDHDqJoNBD6usGOl5w+ZdZzms17ZtZxfnRqtd99MIsNICUQYCw9ktegkOM4M/uazWkTf6R6tfqFkCouHQzBI4ABYo8BZm8ZiL1Q8oRwG5XKNSTJr6eR1dWvyrncrU3lxgYAAJg9hqEtoFhXyudvvlEo3O7+hGAht7h4rvz8+S/dw8ELsBghcwrQZyDPVSpls/fXFhfP85kyuTOuauKvx49PbszNfSfa7d657izsGuL3zsn02m1RnJ39uvjkyQdjqja2vEE6d52RHx8/E0mlLkQPH37bHBkhisWCNKDhn6BOqreyIuuZzK/Vp0+vvrmw8M1/Xk16e6QCHk2lJsNjYyfsROItMxqNq7qVolotuuvrS878/IPMs2d3+MZ4vf0twAA5YRwCJMxMPAAAAABJRU5ErkJggg=='
		btnYellowData	= 'iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAYAAADEtGw7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA+1JREFUeNqMld9rXEUUx8/Mnf3h3k02zXZtilht0yoxDy2iVlAIgYjYGhQf0voglII+FF+k/4DPPvhgRV+sWkHUvqhIW4vGIIhUjL/a0iqiG2ncptnsj+zeTfbHnRnPmZmb3C1VHDic2fnxOWe+c3Yug39p+mXgC/vgMT+bOJDyR+/xMjtGtOZadUrLndUrvzY74We7noSvGAMN/7ctnoHngp8fuaTK7yrdvaG1XNM6XNW6t6x1d1Hr1ryWpVdU88f9P/x9Fg7disHiP4pzkB7gW0/mx199FoaexrkQQPUw/Q4a+a411bFjqg2qMavqxZOnLsryC5OTtOEm8O9nIVXIj57P3ffeBKTudiBnCmHgfB+8beDQvQa1P18/92Xp+vTMDEji8Qg8nN36Tu7eExMghjHRClrVWQ1A1tGvWi8jT2POMwFDO2aemLw9+0bE407TI1t2v3QYRN5BazEIWcP5Zr+pxsYausPhkYePXjsHzxBTnD4NXm7bvuPMf4CZDOkkmk6jrDd9lE6HMWkijdfQ1q3HQDyRE4ODheNalz8WD2Zh2i88Om6yJJgxrCBNpmygKNgGuO30RahEqG5hv2lO5meH9i98Up4QfjoxxVKjDGQtquBYMWOf6f7MVfziXLYKwTIwWXss9DKD4qBIprbtMceSnViRoPRY+SYGDWl3EoLQyShDs763WSEEJ82RJXhip2AiM2wuysC4u08v1neniC7MSEVrPSdN6Opcun1J4J6XF7pblhBcAEiP4fqUneQJutfNIEZTBHLf6R3ace2CmjkKkDRgnGNCKa8K4QpA+zKyRtC24MRtdoHJipk6tUHB6d21Gim6A4L2LJSj6QQOexUhpV4wG81C0o7brCg7lkGfRp+ycAOmzEQkvg3EEMwwGEsYC0NV5K31zqzS3G40E+44BCMoBeBZtAFn1I8FpCwdkOQLJdbHevtzXswEnwbN5k9GUyY2A5gNKAlH87Ix8y2Ypfuhbm/QCi7sOtie5fQitYLGm0pj0cbBBp5y8Mxmxsy3UCNPBPSMSaXCtdbqCXqjTT1tn7rxVr26+KGtAlcJIGLwjJMga08QQU3leM441CqlU3dMlT/aeIQowmLz6vP16l9fm/qlPwfzYgGSTuuM0z/KMlrLoLZSPL9cunqs73WjtvdxaP2x9O2B6tKlD5Ts6r5vQRTIGHMVYf+lUnZVZeni25XKd0+Nz0D3ll8Q9zyw0jd7j/i5sRcHCg/dz5PbMfGclYGaCsyTKjvXdasy/31j5ZfX7py88v5/fpribW4OxE41Np3JjU+JVOEunhzIY1Steo1K2F5ZCGqXv5iv/3Ym+mLc3P4RYACDwQxefMfYYwAAAABJRU5ErkJggg=='

		local imgType	= 'png'-- no NLS

		btn0		= decodeImage(btn0Data,		imgType, pluginTmpPath)
		btn1		= decodeImage(btn1Data,		imgType, pluginTmpPath)
		btn2		= decodeImage(btn2Data,		imgType, pluginTmpPath)
		btn3		= decodeImage(btn3Data,		imgType, pluginTmpPath)
		btn4		= decodeImage(btn4Data,		imgType, pluginTmpPath)
		btn5		= decodeImage(btn5Data,		imgType, pluginTmpPath)
		btn6		= decodeImage(btn6Data,		imgType, pluginTmpPath)
		btn7		= decodeImage(btn7Data,		imgType, pluginTmpPath)
		btn8		= decodeImage(btn8Data,		imgType, pluginTmpPath)
		btn9		= decodeImage(btn9Data,		imgType, pluginTmpPath)
		btnBlue		= decodeImage(btnBlueData,	imgType, pluginTmpPath)
		btnGreen	= decodeImage(btnGreenData,	imgType, pluginTmpPath)
		btnRed		= decodeImage(btnRedData,	imgType, pluginTmpPath)
		btnYellow	= decodeImage(btnYellowData,	imgType, pluginTmpPath)
	else -- neutrino system icons
		-- TODO: allow user icons from /var/tuxbox/icons/
		-- TODO: get path to icons from build environment
		btn0		= '/usr/share/tuxbox/neutrino/icons/0.png'		-- no NLS
		btn1		= '/usr/share/tuxbox/neutrino/icons/1.png'		-- no NLS
		btn2		= '/usr/share/tuxbox/neutrino/icons/2.png'		-- no NLS
		btn3		= '/usr/share/tuxbox/neutrino/icons/3.png'		-- no NLS
		btn4		= '/usr/share/tuxbox/neutrino/icons/4.png'		-- no NLS
		btn5		= '/usr/share/tuxbox/neutrino/icons/5.png'		-- no NLS
		btn6		= '/usr/share/tuxbox/neutrino/icons/6.png'		-- no NLS
		btn7		= '/usr/share/tuxbox/neutrino/icons/7.png'		-- no NLS
		btn8		= '/usr/share/tuxbox/neutrino/icons/8.png'		-- no NLS
		btn9		= '/usr/share/tuxbox/neutrino/icons/9.png'		-- no NLS
		btnBlue		= '/usr/share/tuxbox/neutrino/icons/btn_blue.png'	-- no NLS
		btnGreen	= '/usr/share/tuxbox/neutrino/icons/btn_green.png'	-- no NLS
		btnRed		= '/usr/share/tuxbox/neutrino/icons/btn_red.png'	-- no NLS
		btnYellow	= '/usr/share/tuxbox/neutrino/icons/btn_yellow.png'	-- no NLS
	end -- icon types
end -- function createImages
