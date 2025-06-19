fx_version 'cerulean'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

game 'rdr3'
author 'VORP'
name 'vorp inventory'
description 'Inventory System for RedM VORPCore framework'

lua54 'yes'

client_scripts {
  'client/exports.lua',
}

server_scripts {
  'server/vorpInventoryApi.lua',
  'server/server.lua',
  'server/services/*.lua',
  'server/controllers/*.lua',
}


---@deprecated
server_exports { 'vorp_inventoryApi' }