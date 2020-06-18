resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

ui_page "nui/ui.html"

client_scripts {
	"@vrp/lib/utils.lua",
	"client.lua"
}

server_scripts {
	"@vrp/lib/utils.lua",
	"server.lua"
}

files {
	"nui/ui.html",
	"nui/ui.js",
	"nui/ui.css",
	"nui/images/algemas.png",
	"nui/images/masterpick.png",
	"nui/images/lockpick.png",
	"nui/images/capuz.png",
	"nui/images/placa.png",
}