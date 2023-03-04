Citizen.CreateThread(function()
    local dict = Config.animationDictionary
    local lastGestureTime = 0
    
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(100)
    end
    
    local handsup = false
    while true do
        Citizen.Wait(0)
        
        if not IsPedInAnyVehicle(GetPlayerPed(-1)) then -- Only allow gesture if not in a vehicle
            if IsControlJustPressed(1, Config.startGestureControl) and GetGameTimer() - lastGestureTime >= Config.gestureCooldown then -- Start holding button
                if not handsup then
                    TaskPlayAnim(GetPlayerPed(-1), dict, Config.gestureAnim, 8.0, 8.0, -1, 50, 0, false, false, false)
                    handsup = true
                    
                    -- Disable controls
                    for _, control in ipairs(Config.disabledControls) do
                        DisableControlAction(0, control, true)
                    end
                else
                    handsup = false
                    ClearPedTasks(GetPlayerPed(-1))
                    
                    -- Enable controls
                    for _, control in ipairs(Config.disabledControls) do
                        EnableControlAction(0, control, true)
                    end
                end
                lastGestureTime = GetGameTimer()
            end
            
            -- Only disable controls when hands are up
            if handsup then
                for _, control in ipairs(Config.disabledControls) do
                    DisableControlAction(0, control, true)
                end
            end
        else
            if handsup then -- Clear gesture if entering vehicle
                handsup = false
                ClearPedTasks(GetPlayerPed(-1))
                
                -- Enable controls
                for _, control in ipairs(Config.disabledControls) do
                    EnableControlAction(0, control, true)
                end
            end
        end
    end
end)
