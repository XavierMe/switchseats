local unpack=table.unpack

-- Command
RegisterCommand("seat", function(_, args)
    local seatIndex = unpack(args)
    seatIndex       = tonumber(seatIndex) - 2
    if seatIndex <-1 or seatIndex >= 17 then
    else
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(ped, false)
    if veh ~= nil and veh > 2 then
        CreateThread(function()
                SetPedIntoVehicle(PlayerPedId(), veh, seatIndex)
end)
    end
        end
            end)

-- Function 
CreateThread(function()
    while true do
        Wait(0)
        local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped, false) and not disabled then
        local veh = GetVehiclePedIsIn(ped, false)
    if GetPedInVehicleSeat(veh, 1) == ped then
    if not GetIsTaskActive(ped, 164) and GetIsTaskActive(ped, 165) then
                SetPedIntoVehicle(PlayerPedId(), veh, 1)
end
    end
        end
            end
                end)