fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Dogo#1950'
description 'HintUI'
license 'GPL-3.0'
repository 'https://github.com/LabScripts/lab-HintUI'
version '1.0.0'

ui_page 'web/ui.html'

files {
	'config.lua',
	'web/**'
}

client_scripts {
	'@ox_lib/init.lua',
	'client.lua'
}

dependency 'ox_lib'
