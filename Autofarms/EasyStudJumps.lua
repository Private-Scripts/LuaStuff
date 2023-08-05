--[[
This script is on beta.
Made by shotmixbechillin (Discord)
Enjoy!                          ]]


while true do

    -- Insert this LocalScript into a part in Roblox Studio
    
    local TweenService = game:GetService("TweenService")
    local TeleportPart = script.Parent -- The part that will be teleported (change this to the desired part)
    local DestinationPart = workspace.Checkpoints.Spawn["60"] -- The part whose CFrame will be used as the destination
    
    -- Function to teleport the player using TweenService
    local function teleportPlayer()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Get the CFrame of the destination part
        local destinationCFrame = DestinationPart.CFrame
        
        -- Create a new tween
        local tweenInfo = TweenInfo.new(
            1, -- Duration of the tween in seconds
            Enum.EasingStyle.Quad, -- Easing style of the tween
            Enum.EasingDirection.Out, -- Easing direction of the tween
            0, -- Number of times to repeat the tween (use 0 for no repeat)
            false, -- Whether the tween should reverse after reaching the end
            0 -- Delay before starting the tween in seconds
        )
        
        -- Create the teleport tween
        local teleportTween = TweenService:Create(
            humanoidRootPart, -- Object to tween
            tweenInfo, -- TweenInfo
            {CFrame = destinationCFrame} -- Target properties to tween (in this case, the CFrame position)
        )
        
        -- Play the teleport tween
        teleportTween:Play()
    end
    
    -- Insert this LocalScript into a part in Roblox Studio
    
    local TweenService = game:GetService("TweenService")
    local TeleportPart = script.Parent -- The part that will be teleported (change this to the desired part)
    local DestinationPart = workspace.RebirthButtons.Spawn -- The part whose CFrame will be used as the destination
    
    -- Function to teleport the player using TweenService
    local function teleportPlayer2()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Get the CFrame of the destination part
        local destinationCFrame = DestinationPart.CFrame
        
        -- Create a new tween
        local tweenInfo = TweenInfo.new(
            1, -- Duration of the tween in seconds
            Enum.EasingStyle.Quad, -- Easing style of the tween
            Enum.EasingDirection.Out, -- Easing direction of the tween
            0, -- Number of times to repeat the tween (use 0 for no repeat)
            false, -- Whether the tween should reverse after reaching the end
            0 -- Delay before starting the tween in seconds
        )
        
        -- Create the teleport tween
        local teleportTween = TweenService:Create(
            humanoidRootPart, -- Object to tween
            tweenInfo, -- TweenInfo
            {CFrame = destinationCFrame} -- Target properties to tween (in this case, the CFrame position)
        )
        
        -- Play the teleport tween
        teleportTween:Play()
    end
    
    -- Trigger the teleportation when the script is executed
    teleportPlayer()
    
    wait(3)
    -- Trigger the teleportation when the script is executed
    teleportPlayer2()
    
    wait(18)
    
    local prox = workspace.RebirthButtons.Spawn.ProximityPrompt
    
    prox:InputHoldBegin()
    wait(1.5)
    prox:InputHoldEnd()
    wait(3.5)
    end
