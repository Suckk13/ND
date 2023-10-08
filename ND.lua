-- natural disasters


--Gui
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Kocmoc Hub", "Midnight")

local Tab = Window:NewTab("Player")

local Tab1 = Window:NewTab("AutoFarm")

local Tab2 = Window:NewTab("Info")

local Section = Tab:NewSection("Player")

local Section1 = Tab1:NewSection("AutoFarm")

local Section2 = Tab2:NewSection("INFO Kocmoc Hub is in BETA! (v  0.1)")
local Section3 = Tab2:NewSection("Available Games: ")
local Section4 = Tab2:NewSection("Natural Disaster Survival")
local Section5 = Tab2:NewSection("Tower Of Hell")

--funcioins

--walkspeed
Section:NewSlider("WalkSpeed", "To work properly, you need to enable Bypass", 300, 0, function(speed) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end)

--jumppower

Section:NewSlider("JumpPower", "To work properly, you need to enable Bypass", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

--bypass
IsOn = false
Section:NewToggle("Bypass(SYNAPSE ONLY!)", "Is in beta! Its work only in Synapse", function(Bypass)
    if Bypass then
        IsOn =  true
        while IsOn == true  do
            game.Players.LocalPlayer.Character.Humanoid.Health =  100
        end
    else
        print(' ')
    end
end)


--GodMode

Section:NewButton("GodMode", "You cant get any damage!", function()
    while true do
		wait(0.2)
		game.Players.LocalPlayer.Character.Humanoid.Health = 9999999
	end
end)


--autofarm

AutoFarm  = false
Section1:NewToggle("AutoFarm", "Great AutoFarm!", function(AutoFarm)
    if AutoFarm then
        AutoFarm =  true
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Tower:GetChildren()[10].CFrame
    else
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
end)

