price = 2500 

RegisterServerEvent('yxv:carrepair:checkmoney')
AddEventHandler('yxv:carrepair:checkmoney', function()
		TriggerEvent('es:getPlayerFromId', source, function(xPlayer)
			kaska = xPlayer.getMoney()
			if kaska >= price then
				xPlayer.removeMoney(price)
	                TriggerEvent('esx_addonaccount:getSharedAccount', 'society_mecano', function(account)
			        account.addMoney(price)
					end)
				TriggerClientEvent('yxv:carrepair:napraw', source, price)
			else
				moneyleft = price - kaska
				TriggerClientEvent('yxv:carrepair:braksianka', source, moneyleft)
			end
		end)
end)
