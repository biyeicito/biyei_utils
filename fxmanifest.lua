fx_version "cerulean"

description "Utils"
author "Biyei"
version '1.0.0'

lua54 'yes'

games {
  "gta5"
}


shared_scripts {
    'init.lua',
    'shared/config.lua',
    'shared/utils.lua',
    'shared/objects.lua'
}
client_scripts {
    'bridge/**/*',
    'client/**/*'
}
server_scripts {
    'bridge/**/*',
    'server/**/*'
}

