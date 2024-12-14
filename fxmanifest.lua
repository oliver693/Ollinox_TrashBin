fx_version "cerulean"
game "gta5"
lua54 'yes'
author 'OllinoxScripts' 
description 'Ollinox Trash Bin Script [Instead of player dropping unwanted items, they move it to the TrashBin]'
version "1.0"

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client/client.lua'
}

server_scripts {
    'server/server.lua'
}

dependencies {
    'ox_target',
    'ox_inventory'
}
