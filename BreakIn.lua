local VU = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
VU:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
VU:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
if not KG_HUB ~= "KG_TEAM" then
    game.Players.LocalPlayer:Kick("变量（KG HUB）验证失败，请把内容复制全")
    return
end

local library = loadstring(game:HttpGet("https://raw.github.com/520-Ghost/-/main/UI.lua"))()
local window = library:new("KG┇Break In")

local Weapons = window:Tab("武器")
local WeaponsSection = Weapons:section("武器",true)

WeaponsSection:Button("锤子", function()
    game.ReplicatedStorage.RemoteEvents.BasementWeapon:FireServer(true,"Hammer")
end)

WeaponsSection:Button("球棒", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Bat")
end)

WeaponsSection:Button("剑", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("LinkedSword")
end)

local Tools = window:Tab("物品")
local ToolsSection = Tools:section("物品",true)

ToolsSection:Button("薯片", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Chips")
end)

ToolsSection:Button("棒棒糖", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Lollipop")
end)

ToolsSection:Button("可乐", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("BloxyCola")
end)

ToolsSection:Button("苹果", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Apple")
end)

ToolsSection:Button("披萨", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Pizza2")
end)

ToolsSection:Button("饼干", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Cookie")
end)

ToolsSection:Button("医疗包", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("MedKit")
end)

ToolsSection:Button("药物", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Cure")
end)

ToolsSection:Button("木板", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Plank")
end)

ToolsSection:Button("泰迪熊", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("TeddyBloxpin")
end)

local Roles = window:Tab("游戏通行证角色")
local RolesSection = Roles:section("角色",true)

RolesSection:Button("玩具剑小孩", function()
    game:GetService("ReplicatedStorage").RemoteEvents.MakeRole:FireServer("LinkedSword",true,false)
end)

RolesSection:Button("警员", function()
    game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole:FireServer("Gun",true)
end)

RolesSection:Button("特警", function()
    game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole:FireServer("SwatGun",true)
end)

local PTeleport = window:Tab("传送功能")
local PTeleportSection = PTeleport:section("传送",true)

PTeleportSection:Button("地下室", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(71, -15, -163)
end)

PTeleportSection:Button("房子", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-36, 3, -200)
end)

PTeleportSection:Button("顶楼", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16, 35, -220)
end)

PTeleportSection:Button("超市", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-422, 3, -121)
end)

PTeleportSection:Button("下水道", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(129, 3, -125)
end)

PTeleportSection:Button("Boss房间", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, -287, -1480)
end)

local Others = window:Tab("其它")
local OthersSection = Others:section("功能",true)

OthersSection:Button("猫的朋友", function()
    game.ReplicatedStorage.RemoteEvents.Cattery:FireServer()
end)

OthersSection:Button("解锁地下室", function()
    game.ReplicatedStorage.RemoteEvents.UnlockDoor:FireServer()
end)

OthersSection:Button("地下室灯光", function()
    game.ReplicatedStorage.RemoteEvents.BasementMission:FireServer()
    game.ReplicatedStorage.RemoteFunctions.GetAmbient:InvokeServer()
end)

OthersSection:Button("地下室钥匙", function()
    game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Key")
end)