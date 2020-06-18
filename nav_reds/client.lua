local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
heL = Tunnel.getInterface("nav_reds")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local CoordenadaX = -1077.82
local CoordenadaY = -1675.76
local CoordenadaZ = 4.58
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTION
-----------------------------------------------------------------------------------------------------------------------------------------
local menuactive = false
function heL.ToggleActionMenu()
	menuactive = not menuactive
	if menuactive then
		SetNuiFocus(true,true)
		TransitionToBlurred(1000)
		SendNUIMessage({ showmenu = true })
	else
		SetNuiFocus(false)
		TransitionFromBlurred(1000)
		SendNUIMessage({ hidemenu = true })
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("ButtonClick",function(data,cb)
	if data == "utilidades-comprar-pendrive" then
		TriggerEvent("processo",20000,"fabricando")
		TriggerServerEvent("reds-comprar","pendrive")
	elseif data == "utilidades-comprar-lockpick" then
		TriggerEvent("processo",20000,"fabricando")
		TriggerServerEvent("reds-comprar","lockpick")
	elseif data == "utilidades-comprar-masterpick" then
		TriggerEvent("processo",20000,"fabricando")
		TriggerServerEvent("reds-comprar","masterpick")
	elseif data == "utilidades-comprar-algema" then
		ToggleActionMenu()
		TriggerEvent("processo",20000,"fabricando")
		TriggerServerEvent("reds-comprar","algema")
	elseif data == "utilidades-comprar-capuz" then
		TriggerEvent("processo",20000,"fabricando")
		TriggerServerEvent("reds-comprar","capuz")
	elseif data == "utilidades-comprar-keycard" then
		TriggerEvent("processo",20000,"fabricando")
		TriggerServerEvent("reds-comprar","keycard")
	elseif data == "utilidades-comprar-ticket" then
		TriggerEvent("processo",20000,"fabricando")
   		TriggerServerEvent("reds-comprar","ticket")
	elseif data == "utilidades-comprar-c4" then
		TriggerEvent("processo",20000,"fabricando")
		TriggerServerEvent("reds-comprar","c4")
	elseif data == "utilidades-comprar-placa" then
		TriggerEvent("processo",20000,"fabricando")
		TriggerServerEvent("reds-comprar","placa")
	
	elseif data == "fechar" then
		heL.ToggleActionMenu()
	end
end)

RegisterCommand('contrabando',function(source,args,rawCommand)
	SetNuiFocus(false,false)
	local ped = PlayerPedId()
	local x,y,z = table.unpack(GetEntityCoords(ped))
	local distance = GetDistanceBetweenCoords(CoordenadaX,CoordenadaY,CoordenadaZ,x,y,z,true)
	if distance <= 2.0 then
		if heL.checkPermission() then
			ToggleActionMenu()
		end	
	else
		TriggerEvent("Notify","importante","Para produzir <b>/contrabando</b> ")
	end
end)