fx_version 'cerulean'
games { 'gta5' }

autor 'deep_fury'

description 'Qb-MisteryAdvanced'

version '1.0.1'


shared_script {
    'config.lua'
}

client_script {
    'client/*.lua',
    'locales/*.lua',
}

server_script {
    'server/*.lua',
    'locales/*.lua',
}
