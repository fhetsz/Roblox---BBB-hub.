if game.Players.LocalPlayer.PlayerGui:FindFirstChild("BBBhub") then
	return
end

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local localPlayer = game.Players.LocalPlayer
local camera = workspace.CurrentCamera
local topbarHeight = game:GetService("GuiService"):GetGuiInset().Y

local aimbotEnabled = false
local aimbotNpcCheck = false
local aimbotTeamCheck = false
local aimbotAliveCheck = false
local aimbotKey = "Shift"
local aimbotSmoothing = 0.15
local aimbotSticky = false
local aimbotStickyRange = 50
local guiInset = game:GetService("GuiService"):GetGuiInset()

local espEnabled = false
local espNpcCheck = false
local espTeamCheck = false
local espAliveCheck = false

local espBoxes = {}
local spectateTarget = nil

local ScreenGui = Instance.new("ScreenGui")
local Universal = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local line = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Game = Instance.new("TextLabel")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local BBBhub = Instance.new("TextLabel")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local Categories = Instance.new("ScrollingFrame")
local Aimbot = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local Esp = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Player = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Players = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Misc = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Settings = Instance.new("Folder")
local Aimbot_2 = Instance.new("ScrollingFrame")
local masterswitch = Instance.new("Frame")
local Toggle = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local UIListLayout_2 = Instance.new("UIListLayout")
local NpcCheck = Instance.new("Frame")
local Toggle_2 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local TeamCheck = Instance.new("Frame")
local Toggle_3 = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")
local AliveCheck = Instance.new("Frame")
local Toggle_4 = Instance.new("TextButton")
local TextLabel_4 = Instance.new("TextLabel")
local ActivationButton = Instance.new("Frame")
local Shift = Instance.new("TextButton")
local TextLabel_5 = Instance.new("TextLabel")
local M2 = Instance.new("TextButton")
local X = Instance.new("TextButton")
local M1 = Instance.new("TextButton")
local Esp_2 = Instance.new("ScrollingFrame")
local masterswitch_2 = Instance.new("Frame")
local Toggle_5 = Instance.new("TextButton")
local TextLabel_6 = Instance.new("TextLabel")
local UIListLayout_3 = Instance.new("UIListLayout")
local NpcCheck_2 = Instance.new("Frame")
local Toggle_6 = Instance.new("TextButton")
local TextLabel_7 = Instance.new("TextLabel")
local TeamCheck_2 = Instance.new("Frame")
local Toggle_7 = Instance.new("TextButton")
local TextLabel_8 = Instance.new("TextLabel")
local AliveCheck_2 = Instance.new("Frame")
local Toggle_8 = Instance.new("TextButton")
local TextLabel_9 = Instance.new("TextLabel")
local Player_2 = Instance.new("ScrollingFrame")
local UIListLayout_4 = Instance.new("UIListLayout")
local Speed = Instance.new("Frame")
local TextLabel_10 = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local Jump = Instance.new("Frame")
local TextLabel_11 = Instance.new("TextLabel")
local TextBox_2 = Instance.new("TextBox")
local Players_2 = Instance.new("ScrollingFrame")
local UIListLayout_5 = Instance.new("UIListLayout")
local Misc_2 = Instance.new("ScrollingFrame")
local UIListLayout_6 = Instance.new("UIListLayout")
local Kick = Instance.new("Frame")
local Toggle_9 = Instance.new("TextButton")
local TextLabel_13 = Instance.new("TextLabel")
local Kill = Instance.new("Frame")
local Toggle_10 = Instance.new("TextButton")
local TextLabel_14 = Instance.new("TextLabel")
local Discord = Instance.new("Frame")
local Toggle_11 = Instance.new("TextButton")
local TextLabel_15 = Instance.new("TextLabel")
local Credits = Instance.new("Frame")
local TextLabel_16 = Instance.new("TextLabel")

ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = localPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Name = "BBBhub"

Universal.Name = "Universal"
Universal.Active = true
Universal.Parent = ScreenGui
Universal.BackgroundColor3 = Color3.fromRGB(0, 3, 53)
Universal.BorderColor3 = Color3.fromRGB(0, 0, 0)
Universal.BorderSizePixel = 0
Universal.Position = UDim2.new(0.253101587, 0, 0.200504437, 0)
Universal.Size = UDim2.new(0.493773997, 0, 0.598819017, 0)

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Universal

line.Name = "line"
line.Parent = Universal
line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line.BackgroundTransparency = 1
line.BorderColor3 = Color3.fromRGB(0, 0, 0)
line.BorderSizePixel = 0
line.Position = UDim2.new(0.469438463, 0, -0.0448932722, 0)
line.Size = UDim2.new(0.0594815798, 0, 0.231182799, 0)
line.Font = Enum.Font.SourceSans
line.Text = "|"
line.TextColor3 = Color3.fromRGB(149, 163, 255)
line.TextScaled = true
line.TextSize = 14
line.TextWrapped = true

UIAspectRatioConstraint.Parent = line
UIAspectRatioConstraint.AspectRatio = 0.421
UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize
UIAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Height

Game.Name = "Game"
Game.Parent = Universal
Game.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Game.BackgroundTransparency = 1
Game.BorderColor3 = Color3.fromRGB(0, 0, 0)
Game.BorderSizePixel = 0
Game.Position = UDim2.new(0, 0, 0, 0)
Game.Size = UDim2.new(0.469438344, 0, 0.184503302, 0)
Game.Font = Enum.Font.SourceSans
Game.Text = "Universal"
Game.TextColor3 = Color3.fromRGB(149, 163, 255)
Game.TextScaled = true
Game.TextSize = 14
Game.TextWrapped = true

UIAspectRatioConstraint_2.Parent = Game
UIAspectRatioConstraint_2.AspectRatio = 4.167
UIAspectRatioConstraint_2.AspectType = Enum.AspectType.ScaleWithParentSize

BBBhub.Name = "BBB hub"
BBBhub.Parent = Universal
BBBhub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BBBhub.BackgroundTransparency = 1
BBBhub.BorderColor3 = Color3.fromRGB(0, 0, 0)
BBBhub.BorderSizePixel = 0
BBBhub.Position = UDim2.new(0.528301775, 0, -0.00210583629, 0)
BBBhub.Size = UDim2.new(0.471698165, 0, 0.188569605, 0)
BBBhub.Font = Enum.Font.SourceSans
BBBhub.Text = "Fhetsz"
BBBhub.TextColor3 = Color3.fromRGB(149, 163, 255)
BBBhub.TextScaled = true
BBBhub.TextSize = 14
BBBhub.TextWrapped = true

UIAspectRatioConstraint_3.Parent = BBBhub
UIAspectRatioConstraint_3.AspectRatio = 4.097
UIAspectRatioConstraint_3.AspectType = Enum.AspectType.ScaleWithParentSize

Categories.Name = "Categories"
Categories.Parent = Universal
Categories.Active = true
Categories.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Categories.BackgroundTransparency = 1
Categories.BorderColor3 = Color3.fromRGB(0, 0, 0)
Categories.BorderSizePixel = 0
Categories.Position = UDim2.new(0, 0, 0.181104645, 0)
Categories.Size = UDim2.new(0.210879847, 0, 0.796018243, 0)

UIListLayout.Parent = Categories
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 1)

Aimbot.Name = "Aimbot"
Aimbot.Parent = Categories
Aimbot.BackgroundColor3 = Color3.fromRGB(149, 163, 255)
Aimbot.BorderColor3 = Color3.fromRGB(0, 0, 0)
Aimbot.BorderSizePixel = 0
Aimbot.Size = UDim2.new(0.920731723, 0, 0.052646704, 0)
Aimbot.Font = Enum.Font.SourceSans
Aimbot.Text = "Aimbot"
Aimbot.TextColor3 = Color3.fromRGB(255, 255, 255)
Aimbot.TextScaled = true
Aimbot.TextSize = 14
Aimbot.TextWrapped = true
UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = Aimbot

Esp.Name = "Esp"
Esp.Parent = Categories
Esp.BackgroundColor3 = Color3.fromRGB(149, 163, 255)
Esp.BorderColor3 = Color3.fromRGB(0, 0, 0)
Esp.BorderSizePixel = 0
Esp.Size = UDim2.new(0.920731723, 0, 0.052646704, 0)
Esp.Font = Enum.Font.SourceSans
Esp.Text = "Esp"
Esp.TextColor3 = Color3.fromRGB(255, 255, 255)
Esp.TextScaled = true
Esp.TextSize = 14
Esp.TextWrapped = true
UICorner_3.CornerRadius = UDim.new(0, 12)
UICorner_3.Parent = Esp

Player.Name = "Player"
Player.Parent = Categories
Player.BackgroundColor3 = Color3.fromRGB(149, 163, 255)
Player.BorderColor3 = Color3.fromRGB(0, 0, 0)
Player.BorderSizePixel = 0
Player.Size = UDim2.new(0.920731723, 0, 0.052646704, 0)
Player.Font = Enum.Font.SourceSans
Player.Text = "Local Player"
Player.TextColor3 = Color3.fromRGB(255, 255, 255)
Player.TextScaled = true
Player.TextSize = 14
Player.TextWrapped = true
UICorner_4.CornerRadius = UDim.new(0, 12)
UICorner_4.Parent = Player

Players.Name = "Players"
Players.Parent = Categories
Players.BackgroundColor3 = Color3.fromRGB(149, 163, 255)
Players.BorderColor3 = Color3.fromRGB(0, 0, 0)
Players.BorderSizePixel = 0
Players.Size = UDim2.new(0.920731723, 0, 0.052646704, 0)
Players.Font = Enum.Font.SourceSans
Players.Text = "Players"
Players.TextColor3 = Color3.fromRGB(255, 255, 255)
Players.TextScaled = true
Players.TextSize = 14
Players.TextWrapped = true
UICorner_5.CornerRadius = UDim.new(0, 12)
UICorner_5.Parent = Players

Misc.Name = "Misc"
Misc.Parent = Categories
Misc.BackgroundColor3 = Color3.fromRGB(149, 163, 255)
Misc.BorderColor3 = Color3.fromRGB(0, 0, 0)
Misc.BorderSizePixel = 0
Misc.Size = UDim2.new(0.920731723, 0, 0.052646704, 0)
Misc.Font = Enum.Font.SourceSans
Misc.Text = "Misc | Credits"
Misc.TextColor3 = Color3.fromRGB(255, 255, 255)
Misc.TextScaled = true
Misc.TextSize = 14
Misc.TextWrapped = true
UICorner_6.CornerRadius = UDim.new(0, 12)
UICorner_6.Parent = Misc

Settings.Name = "Settings"
Settings.Parent = Universal

Aimbot_2.Name = "Aimbot"
Aimbot_2.Parent = Settings
Aimbot_2.Active = true
Aimbot_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Aimbot_2.BackgroundTransparency = 1
Aimbot_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Aimbot_2.BorderSizePixel = 0
Aimbot_2.Position = UDim2.new(0.212091848, 0, 0.183210507, 0)
Aimbot_2.Size = UDim2.new(0.783084333, 0, 0.793912351, 0)
Aimbot_2.Visible = false

UIListLayout_2.Parent = Aimbot_2
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 3)

masterswitch.Name = "masterswitch"
masterswitch.Parent = Aimbot_2
masterswitch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
masterswitch.BackgroundTransparency = 1
masterswitch.BorderColor3 = Color3.fromRGB(0, 0, 0)
masterswitch.BorderSizePixel = 0
masterswitch.Size = UDim2.new(0.977011502, 0, 0.0835543796, 0)

Toggle.Name = "Toggle"
Toggle.Parent = masterswitch
Toggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(0.892436981, 0, 0, 0)
Toggle.Size = UDim2.new(0.105882354, 0, 0.793912292, 0)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "N"
Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle.TextScaled = true
Toggle.TextSize = 14
Toggle.TextWrapped = true

TextLabel.Parent = masterswitch
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0.892436981, 0, 0.793912292, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Aimbot [master switch]"
TextLabel.TextColor3 = Color3.fromRGB(149, 163, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

NpcCheck.Name = "NpcCheck"
NpcCheck.Parent = Aimbot_2
NpcCheck.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NpcCheck.BackgroundTransparency = 1
NpcCheck.BorderColor3 = Color3.fromRGB(0, 0, 0)
NpcCheck.BorderSizePixel = 0
NpcCheck.Size = UDim2.new(0.977011502, 0, 0.0835543796, 0)

Toggle_2.Name = "Toggle"
Toggle_2.Parent = NpcCheck
Toggle_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Toggle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_2.BorderSizePixel = 0
Toggle_2.Position = UDim2.new(0.892436981, 0, 0, 0)
Toggle_2.Size = UDim2.new(0.105882354, 0, 0.793912292, 0)
Toggle_2.Font = Enum.Font.SourceSans
Toggle_2.Text = "N"
Toggle_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle_2.TextScaled = true
Toggle_2.TextSize = 14
Toggle_2.TextWrapped = true

TextLabel_2.Parent = NpcCheck
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0.892436981, 0, 0.793912292, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "NPC Check"
TextLabel_2.TextColor3 = Color3.fromRGB(149, 163, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

TeamCheck.Name = "TeamCheck"
TeamCheck.Parent = Aimbot_2
TeamCheck.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeamCheck.BackgroundTransparency = 1
TeamCheck.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeamCheck.BorderSizePixel = 0
TeamCheck.Size = UDim2.new(0.977011502, 0, 0.0835543796, 0)

Toggle_3.Name = "Toggle"
Toggle_3.Parent = TeamCheck
Toggle_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Toggle_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_3.BorderSizePixel = 0
Toggle_3.Position = UDim2.new(0.892436981, 0, 0, 0)
Toggle_3.Size = UDim2.new(0.105882354, 0, 0.793912292, 0)
Toggle_3.Font = Enum.Font.SourceSans
Toggle_3.Text = "N"
Toggle_3.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle_3.TextScaled = true
Toggle_3.TextSize = 14
Toggle_3.TextWrapped = true

TextLabel_3.Parent = TeamCheck
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Size = UDim2.new(0.892436981, 0, 0.793912292, 0)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Team Check"
TextLabel_3.TextColor3 = Color3.fromRGB(149, 163, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14
TextLabel_3.TextWrapped = true

AliveCheck.Name = "AliveCheck"
AliveCheck.Parent = Aimbot_2
AliveCheck.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AliveCheck.BackgroundTransparency = 1
AliveCheck.BorderColor3 = Color3.fromRGB(0, 0, 0)
AliveCheck.BorderSizePixel = 0
AliveCheck.Size = UDim2.new(0.977011502, 0, 0.0835543796, 0)

Toggle_4.Name = "Toggle"
Toggle_4.Parent = AliveCheck
Toggle_4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Toggle_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_4.BorderSizePixel = 0
Toggle_4.Position = UDim2.new(0.892436981, 0, 0, 0)
Toggle_4.Size = UDim2.new(0.105882354, 0, 0.793912292, 0)
Toggle_4.Font = Enum.Font.SourceSans
Toggle_4.Text = "N"
Toggle_4.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle_4.TextScaled = true
Toggle_4.TextSize = 14
Toggle_4.TextWrapped = true

TextLabel_4.Parent = AliveCheck
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Size = UDim2.new(0.892436981, 0, 0.793912292, 0)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Alive Check"
TextLabel_4.TextColor3 = Color3.fromRGB(149, 163, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14
TextLabel_4.TextWrapped = true

ActivationButton.Name = "ActivationButton"
ActivationButton.Parent = Aimbot_2
ActivationButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ActivationButton.BackgroundTransparency = 1
ActivationButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ActivationButton.BorderSizePixel = 0
ActivationButton.Size = UDim2.new(0.975369453, 0, 0.0835543796, 0)

TextLabel_5.Parent = ActivationButton
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.0101010101, 0, 0, 0)
TextLabel_5.Size = UDim2.new(0.563973069, 0, 0.793912292, 0)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "Hold Button:"
TextLabel_5.TextColor3 = Color3.fromRGB(149, 163, 255)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14
TextLabel_5.TextWrapped = true

Shift.Name = "Shift"
Shift.Parent = ActivationButton
Shift.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Shift.BorderColor3 = Color3.fromRGB(0, 0, 0)
Shift.BorderSizePixel = 0
Shift.Position = UDim2.new(0.574255109, 0, 0, 0)
Shift.Size = UDim2.new(0.106060609, 0, 0.793912292, 0)
Shift.Font = Enum.Font.SourceSans
Shift.Text = "Shift"
Shift.TextColor3 = Color3.fromRGB(0, 0, 0)
Shift.TextScaled = true
Shift.TextSize = 14
Shift.TextWrapped = true

M1.Name = "M1"
M1.Parent = ActivationButton
M1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
M1.BorderColor3 = Color3.fromRGB(0, 0, 0)
M1.BorderSizePixel = 0
M1.Position = UDim2.new(0.680315733, 0, 0, 0)
M1.Size = UDim2.new(0.106060609, 0, 0.793912292, 0)
M1.Font = Enum.Font.SourceSans
M1.Text = "Left Mouse"
M1.TextColor3 = Color3.fromRGB(0, 0, 0)
M1.TextScaled = true
M1.TextSize = 14
M1.TextWrapped = true

M2.Name = "M2"
M2.Parent = ActivationButton
M2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
M2.BorderColor3 = Color3.fromRGB(0, 0, 0)
M2.BorderSizePixel = 0
M2.Position = UDim2.new(0.786376357, 0, 0, 0)
M2.Size = UDim2.new(0.106060609, 0, 0.793912292, 0)
M2.Font = Enum.Font.SourceSans
M2.Text = "Right Mouse"
M2.TextColor3 = Color3.fromRGB(0, 0, 0)
M2.TextScaled = true
M2.TextSize = 14
M2.TextWrapped = true

X.Name = "X"
X.Parent = ActivationButton
X.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
X.BorderColor3 = Color3.fromRGB(0, 0, 0)
X.BorderSizePixel = 0
X.Position = UDim2.new(0.892436922, 0, 0, 0)
X.Size = UDim2.new(0.106060609, 0, 0.793912292, 0)
X.Font = Enum.Font.SourceSans
X.Text = "X"
X.TextColor3 = Color3.fromRGB(0, 0, 0)
X.TextScaled = true
X.TextSize = 14
X.TextWrapped = true

local SmoothnessRow = Instance.new("Frame")
SmoothnessRow.Name = "SmoothnessRow"
SmoothnessRow.Parent = Aimbot_2
SmoothnessRow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SmoothnessRow.BackgroundTransparency = 1
SmoothnessRow.BorderSizePixel = 0
SmoothnessRow.Size = UDim2.new(0.977011502, 0, 0.0835543796, 0)

local SmoothnessLabel = Instance.new("TextLabel")
SmoothnessLabel.Parent = SmoothnessRow
SmoothnessLabel.BackgroundTransparency = 1
SmoothnessLabel.BorderSizePixel = 0
SmoothnessLabel.Size = UDim2.new(0.6, 0, 0.793912292, 0)
SmoothnessLabel.Font = Enum.Font.SourceSans
SmoothnessLabel.Text = "Smoothness: 0.15"
SmoothnessLabel.TextColor3 = Color3.fromRGB(149, 163, 255)
SmoothnessLabel.TextScaled = true
SmoothnessLabel.TextWrapped = true

local SmoothDown = Instance.new("TextButton")
SmoothDown.Parent = SmoothnessRow
SmoothDown.BackgroundColor3 = Color3.fromRGB(149, 163, 255)
SmoothDown.BorderSizePixel = 0
SmoothDown.Position = UDim2.new(0.6, 0, 0, 0)
SmoothDown.Size = UDim2.new(0.12, 0, 0.793912292, 0)
SmoothDown.Font = Enum.Font.SourceSans
SmoothDown.Text = "-"
SmoothDown.TextColor3 = Color3.fromRGB(255, 255, 255)
SmoothDown.TextScaled = true

local SmoothUp = Instance.new("TextButton")
SmoothUp.Parent = SmoothnessRow
SmoothUp.BackgroundColor3 = Color3.fromRGB(149, 163, 255)
SmoothUp.BorderSizePixel = 0
SmoothUp.Position = UDim2.new(0.72, 0, 0, 0)
SmoothUp.Size = UDim2.new(0.12, 0, 0.793912292, 0)
SmoothUp.Font = Enum.Font.SourceSans
SmoothUp.Text = "+"
SmoothUp.TextColor3 = Color3.fromRGB(255, 255, 255)
SmoothUp.TextScaled = true

local StickyRow = Instance.new("Frame")
StickyRow.Name = "StickyRow"
StickyRow.Parent = Aimbot_2
StickyRow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StickyRow.BackgroundTransparency = 1
StickyRow.BorderSizePixel = 0
StickyRow.Size = UDim2.new(0.977011502, 0, 0.0835543796, 0)

local StickyToggle = Instance.new("TextButton")
StickyToggle.Name = "Toggle"
StickyToggle.Parent = StickyRow
StickyToggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
StickyToggle.BorderSizePixel = 0
StickyToggle.Position = UDim2.new(0.892436981, 0, 0, 0)
StickyToggle.Size = UDim2.new(0.105882354, 0, 0.793912292, 0)
StickyToggle.Font = Enum.Font.SourceSans
StickyToggle.Text = "N"
StickyToggle.TextColor3 = Color3.fromRGB(0, 0, 0)
StickyToggle.TextScaled = true

local StickyLabel = Instance.new("TextLabel")
StickyLabel.Parent = StickyRow
StickyLabel.BackgroundTransparency = 1
StickyLabel.BorderSizePixel = 0
StickyLabel.Size = UDim2.new(0.892436981, 0, 0.793912292, 0)
StickyLabel.Font = Enum.Font.SourceSans
StickyLabel.Text = "Sticky Aim"
StickyLabel.TextColor3 = Color3.fromRGB(149, 163, 255)
StickyLabel.TextScaled = true
StickyLabel.TextWrapped = true

Esp_2.Name = "Esp"
Esp_2.Parent = Settings
Esp_2.Active = true
Esp_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Esp_2.BackgroundTransparency = 1
Esp_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Esp_2.BorderSizePixel = 0
Esp_2.Position = UDim2.new(0.212091848, 0, 0.183210507, 0)
Esp_2.Size = UDim2.new(0.783084333, 0, 0.793912351, 0)
Esp_2.Visible = false

UIListLayout_3.Parent = Esp_2
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 3)

masterswitch_2.Name = "masterswitch"
masterswitch_2.Parent = Esp_2
masterswitch_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
masterswitch_2.BackgroundTransparency = 1
masterswitch_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
masterswitch_2.BorderSizePixel = 0
masterswitch_2.Size = UDim2.new(0.977011502, 0, 0.0835543796, 0)

Toggle_5.Name = "Toggle"
Toggle_5.Parent = masterswitch_2
Toggle_5.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Toggle_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_5.BorderSizePixel = 0
Toggle_5.Position = UDim2.new(0.892436981, 0, 0, 0)
Toggle_5.Size = UDim2.new(0.105882354, 0, 0.793912292, 0)
Toggle_5.Font = Enum.Font.SourceSans
Toggle_5.Text = "N"
Toggle_5.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle_5.TextScaled = true
Toggle_5.TextSize = 14
Toggle_5.TextWrapped = true

TextLabel_6.Parent = masterswitch_2
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Size = UDim2.new(0.892436981, 0, 0.793912292, 0)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "Esp [master switch]"
TextLabel_6.TextColor3 = Color3.fromRGB(149, 163, 255)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14
TextLabel_6.TextWrapped = true

NpcCheck_2.Name = "NpcCheck"
NpcCheck_2.Parent = Esp_2
NpcCheck_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NpcCheck_2.BackgroundTransparency = 1
NpcCheck_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
NpcCheck_2.BorderSizePixel = 0
NpcCheck_2.Size = UDim2.new(0.977011502, 0, 0.0835543796, 0)

Toggle_6.Name = "Toggle"
Toggle_6.Parent = NpcCheck_2
Toggle_6.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Toggle_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_6.BorderSizePixel = 0
Toggle_6.Position = UDim2.new(0.892436981, 0, 0, 0)
Toggle_6.Size = UDim2.new(0.105882354, 0, 0.793912292, 0)
Toggle_6.Font = Enum.Font.SourceSans
Toggle_6.Text = "N"
Toggle_6.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle_6.TextScaled = true
Toggle_6.TextSize = 14
Toggle_6.TextWrapped = true

TextLabel_7.Parent = NpcCheck_2
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1
TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Size = UDim2.new(0.892436981, 0, 0.793912292, 0)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "NPC Check"
TextLabel_7.TextColor3 = Color3.fromRGB(149, 163, 255)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14
TextLabel_7.TextWrapped = true

TeamCheck_2.Name = "TeamCheck"
TeamCheck_2.Parent = Esp_2
TeamCheck_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeamCheck_2.BackgroundTransparency = 1
TeamCheck_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeamCheck_2.BorderSizePixel = 0
TeamCheck_2.Size = UDim2.new(0.977011502, 0, 0.0835543796, 0)

Toggle_7.Name = "Toggle"
Toggle_7.Parent = TeamCheck_2
Toggle_7.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Toggle_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_7.BorderSizePixel = 0
Toggle_7.Position = UDim2.new(0.892436981, 0, 0, 0)
Toggle_7.Size = UDim2.new(0.105882354, 0, 0.793912292, 0)
Toggle_7.Font = Enum.Font.SourceSans
Toggle_7.Text = "N"
Toggle_7.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle_7.TextScaled = true
Toggle_7.TextSize = 14
Toggle_7.TextWrapped = true

TextLabel_8.Parent = TeamCheck_2
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1
TextLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Size = UDim2.new(0.892436981, 0, 0.793912292, 0)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "Team Check"
TextLabel_8.TextColor3 = Color3.fromRGB(149, 163, 255)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14
TextLabel_8.TextWrapped = true

AliveCheck_2.Name = "AliveCheck"
AliveCheck_2.Parent = Esp_2
AliveCheck_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AliveCheck_2.BackgroundTransparency = 1
AliveCheck_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
AliveCheck_2.BorderSizePixel = 0
AliveCheck_2.Size = UDim2.new(0.977011502, 0, 0.0835543796, 0)

Toggle_8.Name = "Toggle"
Toggle_8.Parent = AliveCheck_2
Toggle_8.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Toggle_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_8.BorderSizePixel = 0
Toggle_8.Position = UDim2.new(0.892436981, 0, 0, 0)
Toggle_8.Size = UDim2.new(0.105882354, 0, 0.793912292, 0)
Toggle_8.Font = Enum.Font.SourceSans
Toggle_8.Text = "N"
Toggle_8.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle_8.TextScaled = true
Toggle_8.TextSize = 14
Toggle_8.TextWrapped = true

TextLabel_9.Parent = AliveCheck_2
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1
TextLabel_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Size = UDim2.new(0.892436981, 0, 0.793912292, 0)
TextLabel_9.Font = Enum.Font.SourceSans
TextLabel_9.Text = "Alive Check"
TextLabel_9.TextColor3 = Color3.fromRGB(149, 163, 255)
TextLabel_9.TextScaled = true
TextLabel_9.TextSize = 14
TextLabel_9.TextWrapped = true

Player_2.Name = "Player"
Player_2.Parent = Settings
Player_2.Active = true
Player_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Player_2.BackgroundTransparency = 1
Player_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Player_2.BorderSizePixel = 0
Player_2.Position = UDim2.new(0.212091848, 0, 0.183210507, 0)
Player_2.Size = UDim2.new(0.783084333, 0, 0.793912351, 0)
Player_2.Visible = false

UIListLayout_4.Parent = Player_2
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_4.Padding = UDim.new(0, 3)

Speed.Name = "Speed"
Speed.Parent = Player_2
Speed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Speed.BackgroundTransparency = 1
Speed.BorderColor3 = Color3.fromRGB(0, 0, 0)
Speed.BorderSizePixel = 0
Speed.Size = UDim2.new(0.977011502, 0, 0.0835543796, 0)

TextLabel_10.Parent = Speed
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1
TextLabel_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Size = UDim2.new(0.764705896, 0, 0.793912292, 0)
TextLabel_10.Font = Enum.Font.SourceSans
TextLabel_10.Text = "Walkspeed"
TextLabel_10.TextColor3 = Color3.fromRGB(149, 163, 255)
TextLabel_10.TextScaled = true
TextLabel_10.TextSize = 14
TextLabel_10.TextWrapped = true

TextBox.Parent = Speed
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.764705896, 0, 0.0232078917, 0)
TextBox.Size = UDim2.new(0.236974791, 0, 0.768708766, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "16"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14
TextBox.TextWrapped = true

Jump.Name = "Jump"
Jump.Parent = Player_2
Jump.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Jump.BackgroundTransparency = 1
Jump.BorderColor3 = Color3.fromRGB(0, 0, 0)
Jump.BorderSizePixel = 0
Jump.Size = UDim2.new(0.977011502, 0, 0.0835543796, 0)

TextLabel_11.Parent = Jump
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1
TextLabel_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Size = UDim2.new(0.764705896, 0, 0.793912292, 0)
TextLabel_11.Font = Enum.Font.SourceSans
TextLabel_11.Text = "Jump Power"
TextLabel_11.TextColor3 = Color3.fromRGB(149, 163, 255)
TextLabel_11.TextScaled = true
TextLabel_11.TextSize = 14
TextLabel_11.TextWrapped = true

TextBox_2.Parent = Jump
TextBox_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox_2.BorderSizePixel = 0
TextBox_2.Position = UDim2.new(0.764705896, 0, 0.0232078917, 0)
TextBox_2.Size = UDim2.new(0.236974791, 0, 0.768708766, 0)
TextBox_2.Font = Enum.Font.SourceSans
TextBox_2.PlaceholderText = "50"
TextBox_2.Text = ""
TextBox_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox_2.TextScaled = true
TextBox_2.TextSize = 14
TextBox_2.TextWrapped = true

Players_2.Name = "Players"
Players_2.Parent = Settings
Players_2.Active = true
Players_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Players_2.BackgroundTransparency = 1
Players_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Players_2.BorderSizePixel = 0
Players_2.Position = UDim2.new(0.212091848, 0, 0.183210507, 0)
Players_2.Size = UDim2.new(0.783084333, 0, 0.793912351, 0)
Players_2.CanvasSize = UDim2.new(0, 0, 0, 0)
Players_2.AutomaticCanvasSize = Enum.AutomaticSize.Y
Players_2.ScrollBarThickness = 4
Players_2.Visible = false

UIListLayout_5.Parent = Players_2
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_5.Padding = UDim.new(0, 3)

Misc_2.Name = "Misc"
Misc_2.Parent = Settings
Misc_2.Active = true
Misc_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Misc_2.BackgroundTransparency = 1
Misc_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Misc_2.BorderSizePixel = 0
Misc_2.Position = UDim2.new(0.212091848, 0, 0.183210507, 0)
Misc_2.Size = UDim2.new(0.783084333, 0, 0.793912351, 0)

UIListLayout_6.Parent = Misc_2
UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_6.Padding = UDim.new(0, 3)

Kick.Name = "Kick"
Kick.Parent = Misc_2
Kick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Kick.BackgroundTransparency = 1
Kick.BorderColor3 = Color3.fromRGB(0, 0, 0)
Kick.BorderSizePixel = 0
Kick.Size = UDim2.new(0.977011502, 0, 0.0835543796, 0)

Toggle_9.Name = "Toggle"
Toggle_9.Parent = Kick
Toggle_9.BackgroundColor3 = Color3.fromRGB(149, 163, 255)
Toggle_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_9.BorderSizePixel = 0
Toggle_9.Position = UDim2.new(0.892436981, 0, 0, 0)
Toggle_9.Size = UDim2.new(0.105882354, 0, 0.793912292, 0)
Toggle_9.Font = Enum.Font.SourceSans
Toggle_9.Text = ""
Toggle_9.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle_9.TextScaled = true
Toggle_9.TextSize = 14
Toggle_9.TextWrapped = true

TextLabel_13.Parent = Kick
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1
TextLabel_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Size = UDim2.new(0.892436981, 0, 0.793912292, 0)
TextLabel_13.Font = Enum.Font.SourceSans
TextLabel_13.Text = "Get Kicked"
TextLabel_13.TextColor3 = Color3.fromRGB(149, 163, 255)
TextLabel_13.TextScaled = true
TextLabel_13.TextSize = 14
TextLabel_13.TextWrapped = true

Kill.Name = "Kill"
Kill.Parent = Misc_2
Kill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Kill.BackgroundTransparency = 1
Kill.BorderColor3 = Color3.fromRGB(0, 0, 0)
Kill.BorderSizePixel = 0
Kill.Size = UDim2.new(0.977011502, 0, 0.0835543796, 0)

Toggle_10.Name = "Toggle"
Toggle_10.Parent = Kill
Toggle_10.BackgroundColor3 = Color3.fromRGB(149, 163, 255)
Toggle_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_10.BorderSizePixel = 0
Toggle_10.Position = UDim2.new(0.892436981, 0, 0, 0)
Toggle_10.Size = UDim2.new(0.105882354, 0, 0.793912292, 0)
Toggle_10.Font = Enum.Font.SourceSans
Toggle_10.Text = ""
Toggle_10.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle_10.TextScaled = true
Toggle_10.TextSize = 14
Toggle_10.TextWrapped = true

TextLabel_14.Parent = Kill
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BackgroundTransparency = 1
TextLabel_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Size = UDim2.new(0.892436981, 0, 0.793912292, 0)
TextLabel_14.Font = Enum.Font.SourceSans
TextLabel_14.Text = "Force Kill"
TextLabel_14.TextColor3 = Color3.fromRGB(149, 163, 255)
TextLabel_14.TextScaled = true
TextLabel_14.TextSize = 14
TextLabel_14.TextWrapped = true

Discord.Name = "Discord"
Discord.Parent = Misc_2
Discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discord.BackgroundTransparency = 1
Discord.BorderColor3 = Color3.fromRGB(0, 0, 0)
Discord.BorderSizePixel = 0
Discord.Size = UDim2.new(0.977011502, 0, 0.0835543796, 0)

Toggle_11.Name = "Toggle"
Toggle_11.Parent = Discord
Toggle_11.BackgroundColor3 = Color3.fromRGB(149, 163, 255)
Toggle_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle_11.BorderSizePixel = 0
Toggle_11.Position = UDim2.new(0.892436981, 0, 0, 0)
Toggle_11.Size = UDim2.new(0.105882354, 0, 0.793912292, 0)
Toggle_11.Font = Enum.Font.SourceSans
Toggle_11.Text = ""
Toggle_11.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle_11.TextScaled = true
Toggle_11.TextSize = 14
Toggle_11.TextWrapped = true

TextLabel_15.Parent = Discord
TextLabel_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.BackgroundTransparency = 1
TextLabel_15.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_15.BorderSizePixel = 0
TextLabel_15.Size = UDim2.new(0.892436981, 0, 0.793912292, 0)
TextLabel_15.Font = Enum.Font.SourceSans
TextLabel_15.Text = "Join Discord"
TextLabel_15.TextColor3 = Color3.fromRGB(149, 163, 255)
TextLabel_15.TextScaled = true
TextLabel_15.TextSize = 14
TextLabel_15.TextWrapped = true

Credits.Name = "Credits"
Credits.Parent = Misc_2
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1
Credits.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits.BorderSizePixel = 0
Credits.Size = UDim2.new(0.977011502, 0, 0.0835543796, 0)

TextLabel_16.Parent = Credits
TextLabel_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_16.BackgroundTransparency = 1
TextLabel_16.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_16.BorderSizePixel = 0
TextLabel_16.Size = UDim2.new(0.998319328, 0, 0.793912292, 0)
TextLabel_16.Font = Enum.Font.SourceSans
TextLabel_16.Text = "Made By Fhetsz"
TextLabel_16.TextColor3 = Color3.fromRGB(149, 163, 255)
TextLabel_16.TextScaled = true
TextLabel_16.TextSize = 14
TextLabel_16.TextWrapped = true



local function setToggle(btn, state)
    if state then
        btn.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        btn.Text = "Y"
    else
        btn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        btn.Text = "N"
    end
end

local function setActiveKey(selectedBtn)
    for _, btn in ipairs({Shift, M1, M2, X}) do
        btn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    end
    selectedBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
end

local function isHoldingAimbotKey()
    if aimbotKey == "Shift" then
        return UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)
    elseif aimbotKey == "M1" then
        return UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
    elseif aimbotKey == "M2" then
        return UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
    elseif aimbotKey == "X" then
        return UserInputService:IsKeyDown(Enum.KeyCode.X)
    end
    return false
end


local function getClosestPlayerToMouse()
    local mousePos = UserInputService:GetMouseLocation() - guiInset
    local closestPlayer = nil
    local closestDist = math.huge

    for _, p in ipairs(game.Players:GetPlayers()) do
        if p ~= localPlayer then
            local char = p.Character
            local hum = char and char:FindFirstChildOfClass("Humanoid")
            local hrp = char and char:FindFirstChild("HumanoidRootPart")

            if hrp and hum and hum.Health > 0 then
                if aimbotTeamCheck and p.Team == localPlayer.Team then
                    continue
                end

                local screenPos, onScreen = camera:WorldToViewportPoint(hrp.Position)

                if onScreen then
                    local dist = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                    if dist < closestDist then
                        closestDist = dist
                        closestPlayer = p
                    end
                end
            end
        end
    end

    return closestPlayer
end

local panels = {
    Aimbot = Aimbot_2,
    Esp = Esp_2,
    Player = Player_2,
    Players = Players_2,
    Misc = Misc_2,
}

local function showPanel(name)
    for k, panel in pairs(panels) do
        panel.Visible = (k == name)
    end
end

showPanel("Misc")

Aimbot.Activated:Connect(function() showPanel("Aimbot") end)
Esp.Activated:Connect(function() showPanel("Esp") end)
Player.Activated:Connect(function() showPanel("Player") end)
Players.Activated:Connect(function() showPanel("Players") end)
Misc.Activated:Connect(function() showPanel("Misc") end)

Toggle.Activated:Connect(function()
    aimbotEnabled = not aimbotEnabled
    setToggle(Toggle, aimbotEnabled)
end)

Toggle_2.Activated:Connect(function()
    aimbotNpcCheck = not aimbotNpcCheck
    setToggle(Toggle_2, aimbotNpcCheck)
end)

Toggle_3.Activated:Connect(function()
    aimbotTeamCheck = not aimbotTeamCheck
    setToggle(Toggle_3, aimbotTeamCheck)
end)

Toggle_4.Activated:Connect(function()
    aimbotAliveCheck = not aimbotAliveCheck
    setToggle(Toggle_4, aimbotAliveCheck)
end)

Shift.Activated:Connect(function() aimbotKey = "Shift" setActiveKey(Shift) end)
M1.Activated:Connect(function() aimbotKey = "M1" setActiveKey(M1) end)
M2.Activated:Connect(function() aimbotKey = "M2" setActiveKey(M2) end)
X.Activated:Connect(function() aimbotKey = "X" setActiveKey(X) end)

setActiveKey(Shift)

SmoothDown.Activated:Connect(function()
    aimbotSmoothing = math.clamp(math.floor((aimbotSmoothing - 0.05) * 100 + 0.5) / 100, 0.05, 1.0)
    SmoothnessLabel.Text = "Smoothness: " .. aimbotSmoothing
end)

SmoothUp.Activated:Connect(function()
    aimbotSmoothing = math.clamp(math.floor((aimbotSmoothing + 0.05) * 100 + 0.5) / 100, 0.05, 1.0)
    SmoothnessLabel.Text = "Smoothness: " .. aimbotSmoothing
end)

StickyToggle.Activated:Connect(function()
    aimbotSticky = not aimbotSticky
    setToggle(StickyToggle, aimbotSticky)
end)

Toggle_5.Activated:Connect(function()
    espEnabled = not espEnabled
    setToggle(Toggle_5, espEnabled)
    if not espEnabled then
        for _, highlight in pairs(espBoxes) do
            highlight:Destroy()
        end
        espBoxes = {}
    end
end)

Toggle_6.Activated:Connect(function()
    espNpcCheck = not espNpcCheck
    setToggle(Toggle_6, espNpcCheck)
end)

Toggle_7.Activated:Connect(function()
    espTeamCheck = not espTeamCheck
    setToggle(Toggle_7, espTeamCheck)
end)

Toggle_8.Activated:Connect(function()
    espAliveCheck = not espAliveCheck
    setToggle(Toggle_8, espAliveCheck)
end)

TextBox.FocusLost:Connect(function()
    local val = tonumber(TextBox.Text)
    if val then
        local char = localPlayer.Character
        if char then
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then hum.WalkSpeed = val end
        end
    end
end)

TextBox_2.FocusLost:Connect(function()
    local val = tonumber(TextBox_2.Text)
    if val then
        local char = localPlayer.Character
        if char then
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then hum.JumpPower = val end
        end
    end
end)

local function refreshPlayerList()
    for _, child in ipairs(Players_2:GetChildren()) do
        if child:IsA("Frame") then
            child:Destroy()
        end
    end

    for _, p in ipairs(game.Players:GetPlayers()) do
        if p ~= localPlayer then
            local entry = Instance.new("Frame")
            entry.BackgroundTransparency = 1
            entry.BorderSizePixel = 0
            entry.Size = UDim2.new(0.977011502, 0, 0, 30)
            entry.Parent = Players_2

            local nameLabel = Instance.new("TextLabel")
            nameLabel.BackgroundTransparency = 1
            nameLabel.BorderSizePixel = 0
            nameLabel.Size = UDim2.new(0.665546238, 0, 1, 0)
            nameLabel.Font = Enum.Font.SourceSans
            nameLabel.Text = p.DisplayName .. " (@" .. p.Name .. ")"
            nameLabel.TextColor3 = Color3.fromRGB(149, 163, 255)
            nameLabel.TextScaled = true
            nameLabel.TextWrapped = true
            nameLabel.Parent = entry

            local tpBtn = Instance.new("TextButton")
            tpBtn.Name = "Teleport"
            tpBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            tpBtn.BorderSizePixel = 0
            tpBtn.Position = UDim2.new(0.665546238, 0, 0.1, 0)
            tpBtn.Size = UDim2.new(0.110924371, 0, 0.8, 0)
            tpBtn.Font = Enum.Font.SourceSans
            tpBtn.Text = "TP"
            tpBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
            tpBtn.TextScaled = true
            tpBtn.Parent = entry

            local spBtn = Instance.new("TextButton")
            spBtn.Name = "Spectate"
            spBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            spBtn.BorderSizePixel = 0
            spBtn.Position = UDim2.new(0.776470602, 0, 0.1, 0)
            spBtn.Size = UDim2.new(0.110924371, 0, 0.8, 0)
            spBtn.Font = Enum.Font.SourceSans
            spBtn.Text = "View"
            spBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
            spBtn.TextScaled = true
            spBtn.Parent = entry

            tpBtn.Activated:Connect(function()
                local char = localPlayer.Character
                local targetChar = p.Character
                if char and targetChar then
                    local hrp = char:FindFirstChild("HumanoidRootPart")
                    local targetHrp = targetChar:FindFirstChild("HumanoidRootPart")
                    if hrp and targetHrp then
                        hrp.CFrame = targetHrp.CFrame + Vector3.new(0, 3, 0)
                    end
                end
            end)

            spBtn.Activated:Connect(function()
                if spectateTarget == p then
                    spectateTarget = nil
                    spBtn.Text = "View"
                    camera.CameraSubject = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
                else
                    spectateTarget = p
                    spBtn.Text = "Stop"
                    local targetChar = p.Character
                    if targetChar then
                        local hum = targetChar:FindFirstChildOfClass("Humanoid")
                        if hum then camera.CameraSubject = hum end
                    end
                end
            end)
        end
    end
end

game.Players.PlayerAdded:Connect(refreshPlayerList)
game.Players.PlayerRemoving:Connect(refreshPlayerList)
refreshPlayerList()

task.spawn(function()
    while true do
        task.wait(5)
        refreshPlayerList()
    end
end)

game.Players.PlayerAdded:Connect(refreshPlayerList)
game.Players.PlayerRemoving:Connect(refreshPlayerList)
refreshPlayerList()

Toggle_9.Activated:Connect(function()
    localPlayer:Kick("You were kicked.")
end)

Toggle_10.Activated:Connect(function()
    local char = localPlayer.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then hum.Health = 0 end
    end
end)

Toggle_11.Activated:Connect(function()
    setclipboard("https://discord.gg/GFtZ56jwmQ")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Discord";
        Text = "Invite link copied to clipboard!";
        Duration = 3;
    })
end)

RunService.RenderStepped:Connect(function()
    if aimbotEnabled and isHoldingAimbotKey() then
        local target = getClosestPlayerToMouse()

        if aimbotSticky and spectateTarget then
            target = spectateTarget
        end

        if target and target ~= localPlayer and target.Character then
            local char = target.Character

            local targetPart = char:FindFirstChild("Head")

            if targetPart then
                local aimPosition = targetPart.Position

                if targetPart.Name == "Head" then
                    aimPosition = aimPosition - Vector3.new(0, 1.5, 0)
                else
                    aimPosition = aimPosition + Vector3.new(0, 0.25, 0)
                end

                local screenPos, onScreen = camera:WorldToViewportPoint(aimPosition)

                if onScreen then
                    local mousePos = UserInputService:GetMouseLocation()

                    local deltaX = screenPos.X - mousePos.X
                    local deltaY = screenPos.Y - mousePos.Y

                    if mousemoverel then
                        mousemoverel(
                            deltaX * aimbotSmoothing,
                            deltaY * aimbotSmoothing
                        )
                    end
                end
            end
        end
    end
end)

RunService.RenderStepped:Connect(function()
    for p, highlight in pairs(espBoxes) do
        if not game.Players:FindFirstChild(p.Name) then
            highlight:Destroy()
            espBoxes[p] = nil
        end
    end

    if not espEnabled then
        for p, highlight in pairs(espBoxes) do
            highlight:Destroy()
            espBoxes[p] = nil
        end
        return
    end

    for _, p in ipairs(game.Players:GetPlayers()) do
        if p ~= localPlayer then
            local skip = false
            if espTeamCheck and p.Team == localPlayer.Team then skip = true end
            if espAliveCheck then
                local char = p.Character
                if not char then
                    skip = true
                else
                    local hum = char:FindFirstChildOfClass("Humanoid")
                    if not hum or hum.Health <= 0 then skip = true end
                end
            end
            if espNpcCheck then skip = true end

            local char = p.Character
            if not skip and char then
                if not espBoxes[p] then
                    local highlight = Instance.new("Highlight")
                    highlight.FillColor = Color3.fromRGB(255, 50, 50)
                    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                    highlight.FillTransparency = 0.5
                    highlight.OutlineTransparency = 0
                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    highlight.Adornee = char
                    highlight.Parent = char
                    espBoxes[p] = highlight
                end
            else
                if espBoxes[p] then
                    espBoxes[p]:Destroy()
                    espBoxes[p] = nil
                end
            end
        end
    end
end)

local dragging = false
local dragInput = nil
local dragStart = nil
local startPos = nil

Universal.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Universal.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Universal.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)
UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        Universal.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)
