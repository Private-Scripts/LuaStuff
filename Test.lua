if game.PlaceId == 7211666966 then
    
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    
    getgenv().AutoFarm = true
    
    function AutoFarm ()
        while getgenv().AutoFarm == true do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Storage.End.WinsBrick.CFrame
            wait(0.000000001)
        end
    end
    
    local Window = OrionLib:MakeWindow({Name = "Tower of Jump [FREE HALOS😇]", HidePremium = false, IntroText = "AutoFarm", SaveConfig = false, ConfigFolder = "OrionTest"})
    
    local Tab = Window:MakeTab({
        Name = "AutoFarm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    Tab:AddToggle({
        Name = "Toggle AutoFarm",
        Default = false,
        Callback = function(Value)
            getgenv().AutoFarm = Value
            AutoFarm()
            
        end    
    })
if getgenv().Say == true then
    local msg = "[AutoFarm Loaded!] Version: 1.0.0"
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
    end
end
