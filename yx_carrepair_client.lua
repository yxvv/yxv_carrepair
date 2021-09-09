RegisterNetEvent('yxv:carrepair')
AddEventHandler('yxv:carrepair', function()
	TriggerServerEvent('yxv:carrepair:checkmoney')
end)


RegisterNetEvent('yxv:carrepair:napraw')
AddEventHandler('yxv:carrepair:napraw', function(price)
	TriggerEvent('progbar',45000, 'Mechanik zajmuje się twoim pojazdem...')
	wylazztejfury()
	Wait(45000)
	SetVehicleFixed(GetVehiclePedIsUsing(GetPlayerPed(-1)), 1000)
	SetVehicleDeformationFixed(GetVehiclePedIsUsing(GetPlayerPed(-1)), 1000)
	SetVehicleUndriveable(GetVehiclePedIsUsing(GetPlayerPed(-1)), 1000)
	SetVehicleEngineOn(GetVehiclePedIsUsing(GetPlayerPed(-1)), 1000)
	exports.FeedM:ShowNotification('~g~Naprawiono ~w~Samochód')
end)

RegisterNetEvent('yxv:carrepair:braksianka')
AddEventHandler('yxv:carrepair:braksianka', function(moneyleft)
	exports.FeedM:ShowNotification('~r~Na naprawę brakuje ci~w~ ' .. moneyleft .. '$')
end)

wylazztejfury = function()
	local player = PlayerPedId()
	local vehicle = GetVehiclePedIsIn(player, false)
	local flag = 0
	TaskLeaveVehicle(player, vehicle, flag)
end
    