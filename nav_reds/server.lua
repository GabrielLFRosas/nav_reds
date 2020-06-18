local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
heL = {}
Tunnel.bindInterface("nav_reds",heL)

local actived = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- ARRAY
-----------------------------------------------------------------------------------------------------------------------------------------
local valores = {
--	{ item = "pendrive", quantidade = 10, componentes = 50, dinheirosujo = 25000 },
	{ item = "lockpick", quantidade = 1, componentes = 10, dinheirosujo = 3000 },
	{ item = "masterpick", quantidade = 1, componentes = 25, venda = 15000 },
	{ item = "algema", quantidade = 1, componentes = 30, venda = 20000 },
	{ item = "capuz", quantidade = 1, componentes = 30, venda = 20000 },
--	{ item = "keycard", quantidade = 1, componentes = 50, venda = 35000 },
--	{ item = "ticket", quantidade = 1, componentes = 5, venda = 1500 },
--	{ item = "c4", quantidade = 1, componentes = 30, venda = 35000 },
	{ item = "placa", quantidade = 1, componentes = 10, venda = 5000 },
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- COMPRAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("reds-comprar")
AddEventHandler("reds-comprar",function(item)
	local source = source
	local user_id = vRP.getUserId(source)
	local componentes = vRP.getInventoryItemAmount(user_id,"componentes")
	local dinheirosujo = vRP.getInventoryItemAmount(user_id,"dinheirosujo")
	if user_id and not actived[user_id] and actived[user_id] == nil then
			if item == "pendrive" then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("pendrive") <= vRP.getInventoryMaxWeight(user_id) then
					if componentes >= 50 and dinheirosujo >= 25000 then
						actived = true
						vRP.tryGetInventoryItem(user_id,"componentes",50)
						vRP.tryGetInventoryItem(user_id,"dinheirosujo",25000)
						TriggerClientEvent("progress",20000,fabricando)
						SetTimeout(20000,function()
						vRP.giveInventoryItem(user_id,"pendrive",1)
						TriggerClientEvent("Notify",source,"sucesso","Compra efetuada com sucesso!</b>.")
						actived = nil
						end)
					else
						TriggerClientEvent("Notify",source,"negado","Materia-prima insuficiente")
					end
				else
					TriggerClientEvent("Notify",source,"negado","Espaço insuficiente.")
				end
			elseif item == "lockpick" then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("lockpick") <= vRP.getInventoryMaxWeight(user_id) then
					if 	componentes >= 10 and dinheirosujo >= 3000 then
						actived = true
						vRP.tryGetInventoryItem(user_id,"componentes",10)
						vRP.tryGetInventoryItem(user_id,"dinheirosujo",3000)
						heL.ToggleActionMenu()
						TriggerClientEvent("progress",20000,fabricando)
						SetTimeout(20000,function()						
						vRP.giveInventoryItem(user_id,"lockpick",1)
						TriggerClientEvent("Notify",source,"sucesso","Compra efetuada com sucesso!</b>.")
						actived = nil		
						end)		
					else
						TriggerClientEvent("Notify",source,"negado","Materia-prima insuficiente")
					end
				else
					TriggerClientEvent("Notify",source,"negado","Espaço insuficiente.")
				end
			elseif item == "masterpick" then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("masterpick") <= vRP.getInventoryMaxWeight(user_id) then
					if 	componentes >= 25 and dinheirosujo >= 15000 then
						actived = true
						vRP.tryGetInventoryItem(user_id,"componentes",25)
						vRP.tryGetInventoryItem(user_id,"dinheirosujo",15000)
						TriggerClientEvent("progress",20000,fabricando)
						SetTimeout(20000,function()		
						vRP.giveInventoryItem(user_id,"masterpick",1)
						TriggerClientEvent("Notify",source,"sucesso","Compra efetuada com sucesso!</b>.")
						actived = nil	
						end)		
					else
						TriggerClientEvent("Notify",source,"negado","Materia-prima insuficiente")
					end
				else
					TriggerClientEvent("Notify",source,"negado","Espaço insuficiente.")
				end
			elseif item == "algema" then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("algema") <= vRP.getInventoryMaxWeight(user_id) then
					if 	componentes >= 30 and dinheirosujo >= 20000 then
						actived = true
						vRP.tryGetInventoryItem(user_id,"componentes",30)
						vRP.tryGetInventoryItem(user_id,"dinheirosujo",20000)
						TriggerClientEvent("progress",20000,fabricando)
						SetTimeout(20000,function()		
						vRP.giveInventoryItem(user_id,"algema",1)
						TriggerClientEvent("Notify",source,"sucesso","Compra efetuada com sucesso!</b>.")
						actived = nil
						end)		
					else
						TriggerClientEvent("Notify",source,"negado","Materia-prima insuficiente")
					end
				else
					TriggerClientEvent("Notify",source,"negado","Espaço insuficiente.")
				end
			elseif item == "capuz" then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("capuz") <= vRP.getInventoryMaxWeight(user_id) then
					if 	componentes >= 30 and dinheirosujo >= 20000 then
						actived = true
						vRP.tryGetInventoryItem(user_id,"componentes",30)
						vRP.tryGetInventoryItem(user_id,"dinheirosujo",20000) 
						TriggerClientEvent("progress",20000,fabricando)
						SetTimeout(20000,function()						
						vRP.giveInventoryItem(user_id,"capuz",1)
						TriggerClientEvent("Notify",source,"sucesso","Compra efetuada com sucesso!</b>.")
						actived = nil
						end)	
					else
						TriggerClientEvent("Notify",source,"negado","Materia-prima insuficiente")
					end
				else
					TriggerClientEvent("Notify",source,"negado","Espaço insuficiente.")
				end
			elseif item == "keykard" then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("keykard") <= vRP.getInventoryMaxWeight(user_id) then
					if 	componentes >= 50 and dinheirosujo >= 35000 then
						actived = true
						vRP.tryGetInventoryItem(user_id,"componentes",50)
						vRP.tryGetInventoryItem(user_id,"dinheirosujo",35000)
						TriggerClientEvent("progress",20000,fabricando)
						SetTimeout(20000,function()		
						vRP.giveInventoryItem(user_id,"keykard",1)
						TriggerClientEvent("Notify",source,"sucesso","Compra efetuada com sucesso!</b>.")
						actived = nil	
						end)		
					else
						TriggerClientEvent("Notify",source,"negado","Materia-prima insuficiente")
					end
				else
					TriggerClientEvent("Notify",source,"negado","Espaço insuficiente.")
				end
			elseif item == "ticket" then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("ticket") <= vRP.getInventoryMaxWeight(user_id) then
					if 	componentes >= 5 and dinheirosujo >= 1500 then
						actived = true
						vRP.tryGetInventoryItem(user_id,"componentes",5)
						vRP.tryGetInventoryItem(user_id,"dinheirosujo",1500)
						TriggerClientEvent("progress",20000,fabricando) 
						SetTimeout(20000,function()	
						vRP.giveInventoryItem(user_id,"ticket",1)						
						TriggerClientEvent("Notify",source,"sucesso","Compra efetuada com sucesso!</b>.")
						actived = nil
						end)	
					else
						TriggerClientEvent("Notify",source,"negado","Materia-prima insuficiente")
					end
				else
					TriggerClientEvent("Notify",source,"negado","Espaço insuficiente.")
				end
			elseif item == "c4" then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("c4") <= vRP.getInventoryMaxWeight(user_id) then
					if 	componentes >= 30 and dinheirosujo >= 35000 then
						actived = true
						vRP.tryGetInventoryItem(user_id,"componentes",30)
						vRP.tryGetInventoryItem(user_id,"dinheirosujo",35000) 
						TriggerClientEvent("progress",20000,fabricando)
						SetTimeout(20000,function()						
						vRP.giveInventoryItem(user_id,"c4",1)
						TriggerClientEvent("Notify",source,"sucesso","Compra efetuada com sucesso!</b>.")
						actived = nil
						end)	
					else
						TriggerClientEvent("Notify",source,"negado","Materia-prima insuficiente")
					end
				else
					TriggerClientEvent("Notify",source,"negado","Espaço insuficiente.")
				end
			elseif item == "placa" then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("placa") <= vRP.getInventoryMaxWeight(user_id) then
					if 	componentes >= 10 and dinheirosujo >= 5000 then
						actived = true
						vRP.tryGetInventoryItem(user_id,"componentes",10)
						vRP.tryGetInventoryItem(user_id,"dinheirosujo",5000) 
						ToggleActionMenu()
						TriggerClientEvent("progress",20000,fabricando)
						SetTimeout(20000,function()		
						vRP.giveInventoryItem(user_id,"placa",1)
						TriggerClientEvent("Notify",source,"sucesso","Compra efetuada com sucesso!</b>.")
						actived = nil
						end)	
					else
						TriggerClientEvent("Notify",source,"negado","Materia-prima insuficiente")
					end
				else
					TriggerClientEvent("Notify",source,"negado","Espaço insuficiente.")
				end
			end																																
	end
end)

function heL.checkPermission()
	local source = source
	local user_id = vRP.getUserId(source)
	return vRP.hasPermission(user_id,"reds.permissao")
end