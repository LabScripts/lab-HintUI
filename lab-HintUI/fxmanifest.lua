fx_version 'adamant'

game 'gta5'

author 'Dogo#1950'
description 'HintUI'
version '1.0'
lua54 'yes'

ui_page 'web/ui.html'

client_scripts {
	'@ox_lib/init.lua',
	'client.lua'
}

files {
	'web/*.*',
}

export 'Show'
export 'Hide'
