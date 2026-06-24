-- You trying to get the code? Skid spotted!

-------------------------------------------------------------------------------
local Loader = Instance.new("ScreenGui")
local KeySystem = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Close = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local Try = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UICorner_4 = Instance.new("UICorner")
local line = Instance.new("TextLabel")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local ScriptName = Instance.new("TextLabel")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local Creator = Instance.new("TextLabel")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local LoadingFrame = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local BBBhub = Instance.new("TextLabel")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Loading = Instance.new("TextLabel")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local Wait = Instance.new("TextLabel")
local UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_11 = Instance.new("UIAspectRatioConstraint")


Loader.Name = "Loader"
Loader.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

KeySystem.Name = "KeySystem"
KeySystem.Parent = Loader
KeySystem.BackgroundColor3 = Color3.fromRGB(0, 3, 53)
KeySystem.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeySystem.BorderSizePixel = 0
KeySystem.Position = UDim2.new(0.376984119, 0, 0.38209331, 0)
KeySystem.Size = UDim2.new(0.245370373, 0, 0.234552339, 0)
KeySystem.Visible = false

TextBox.Parent = KeySystem
TextBox.BackgroundColor3 = Color3.fromRGB(149, 163, 255)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0997304618, 0, 0.268817216, 0)
TextBox.Size = UDim2.new(0.80862534, 0, 0.322580636, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "abc123"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = TextBox

UIAspectRatioConstraint.Parent = TextBox
UIAspectRatioConstraint.AspectRatio = 5.033
UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

Close.Name = "Close"
Close.Parent = KeySystem
Close.BackgroundColor3 = Color3.fromRGB(149, 163, 255)
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.094339624, 0, 0.65053761, 0)
Close.Size = UDim2.new(0.350404322, 0, 0.268817216, 0)
Close.Font = Enum.Font.SourceSans
Close.Text = "Cancel"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = Close

UIAspectRatioConstraint_2.Parent = Close
UIAspectRatioConstraint_2.AspectRatio = 2.617
UIAspectRatioConstraint_2.AspectType = Enum.AspectType.ScaleWithParentSize

Try.Name = "Try"
Try.Parent = KeySystem
Try.BackgroundColor3 = Color3.fromRGB(149, 163, 255)
Try.BorderColor3 = Color3.fromRGB(0, 0, 0)
Try.BorderSizePixel = 0
Try.Position = UDim2.new(0.55795151, 0, 0.65053761, 0)
Try.Size = UDim2.new(0.350404322, 0, 0.268817216, 0)
Try.Font = Enum.Font.SourceSans
Try.Text = "Try"
Try.TextColor3 = Color3.fromRGB(0, 0, 0)
Try.TextScaled = true
Try.TextSize = 14.000
Try.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 15)
UICorner_3.Parent = Try

UIAspectRatioConstraint_3.Parent = Try
UIAspectRatioConstraint_3.AspectRatio = 2.617
UIAspectRatioConstraint_3.AspectType = Enum.AspectType.ScaleWithParentSize

UICorner_4.CornerRadius = UDim.new(0, 15)
UICorner_4.Parent = KeySystem

line.Name = "line"
line.Parent = KeySystem
line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line.BackgroundTransparency = 1.000
line.BorderColor3 = Color3.fromRGB(0, 0, 0)
line.BorderSizePixel = 0
line.Position = UDim2.new(0.479784369, 0, -0.0322580636, 0)
line.Size = UDim2.new(0.0485175215, 0, 0.231182799, 0)
line.Font = Enum.Font.SourceSans
line.Text = "|"
line.TextColor3 = Color3.fromRGB(149, 163, 255)
line.TextScaled = true
line.TextSize = 14.000
line.TextWrapped = true

UIAspectRatioConstraint_4.Parent = line
UIAspectRatioConstraint_4.AspectRatio = 0.421
UIAspectRatioConstraint_4.AspectType = Enum.AspectType.ScaleWithParentSize
UIAspectRatioConstraint_4.DominantAxis = Enum.DominantAxis.Height

ScriptName.Name = "ScriptName"
ScriptName.Parent = KeySystem
ScriptName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptName.BackgroundTransparency = 1.000
ScriptName.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptName.BorderSizePixel = 0
ScriptName.Size = UDim2.new(0.479784369, 0, 0.231182799, 0)
ScriptName.Font = Enum.Font.SourceSans
ScriptName.Text = "BBB hub"
ScriptName.TextColor3 = Color3.fromRGB(149, 163, 255)
ScriptName.TextScaled = true
ScriptName.TextSize = 14.000
ScriptName.TextWrapped = true

UIAspectRatioConstraint_5.Parent = ScriptName
UIAspectRatioConstraint_5.AspectRatio = 4.167
UIAspectRatioConstraint_5.AspectType = Enum.AspectType.ScaleWithParentSize

Creator.Name = "Creator"
Creator.Parent = KeySystem
Creator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Creator.BackgroundTransparency = 1.000
Creator.BorderColor3 = Color3.fromRGB(0, 0, 0)
Creator.BorderSizePixel = 0
Creator.Position = UDim2.new(0.528301895, 0, 0, 0)
Creator.Size = UDim2.new(0.471698105, 0, 0.231182799, 0)
Creator.Font = Enum.Font.SourceSans
Creator.Text = "Fhetsz"
Creator.TextColor3 = Color3.fromRGB(149, 163, 255)
Creator.TextScaled = true
Creator.TextSize = 14.000
Creator.TextWrapped = true

UIAspectRatioConstraint_6.Parent = Creator
UIAspectRatioConstraint_6.AspectRatio = 4.097
UIAspectRatioConstraint_6.AspectType = Enum.AspectType.ScaleWithParentSize

UIAspectRatioConstraint_7.Parent = KeySystem
UIAspectRatioConstraint_7.AspectRatio = 2.008
UIAspectRatioConstraint_7.AspectType = Enum.AspectType.ScaleWithParentSize

LoadingFrame.Name = "LoadingFrame"
LoadingFrame.Parent = Loader
LoadingFrame.BackgroundColor3 = Color3.fromRGB(0, 3, 53)
LoadingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadingFrame.BorderSizePixel = 0
LoadingFrame.Position = UDim2.new(0.372354507, 0, 0.335435063, 0)
LoadingFrame.Size = UDim2.new(0.253613681, 0, 0.327868849, 0)
LoadingFrame.Visible = false

UICorner_5.CornerRadius = UDim.new(0, 15)
UICorner_5.Parent = LoadingFrame

BBBhub.Name = "BBB hub"
BBBhub.Parent = LoadingFrame
BBBhub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BBBhub.BackgroundTransparency = 1.000
BBBhub.BorderColor3 = Color3.fromRGB(0, 0, 0)
BBBhub.BorderSizePixel = 0
BBBhub.Position = UDim2.new(0.00259067351, 0, 0.761538446, 0)
BBBhub.Size = UDim2.new(0.99999994, 0, 0.238461539, 0)
BBBhub.Font = Enum.Font.SourceSans
BBBhub.Text = "BBB hub"
BBBhub.TextColor3 = Color3.fromRGB(149, 163, 255)
BBBhub.TextScaled = true
BBBhub.TextSize = 35.000
BBBhub.TextWrapped = true

UIAspectRatioConstraint_8.Parent = BBBhub
UIAspectRatioConstraint_8.AspectRatio = 6.226
UIAspectRatioConstraint_8.AspectType = Enum.AspectType.ScaleWithParentSize

UITextSizeConstraint.Parent = BBBhub
UITextSizeConstraint.MaxTextSize = 35

Loading.Name = "Loading"
Loading.Parent = LoadingFrame
Loading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Loading.BackgroundTransparency = 1.000
Loading.BorderColor3 = Color3.fromRGB(0, 0, 0)
Loading.BorderSizePixel = 0
Loading.Position = UDim2.new(0.00259067351, 0, 0, 0)
Loading.Size = UDim2.new(0.99999994, 0, 0.396153837, 0)
Loading.Font = Enum.Font.SourceSans
Loading.Text = "Loading"
Loading.TextColor3 = Color3.fromRGB(149, 163, 255)
Loading.TextScaled = true
Loading.TextSize = 100.000
Loading.TextWrapped = true

UIAspectRatioConstraint_9.Parent = Loading
UIAspectRatioConstraint_9.AspectRatio = 3.748
UIAspectRatioConstraint_9.AspectType = Enum.AspectType.ScaleWithParentSize

UITextSizeConstraint_2.Parent = Loading

Wait.Name = "Wait"
Wait.Parent = LoadingFrame
Wait.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Wait.BackgroundTransparency = 1.000
Wait.BorderColor3 = Color3.fromRGB(0, 0, 0)
Wait.BorderSizePixel = 0
Wait.Position = UDim2.new(0, 0, 0.396153837, 0)
Wait.Size = UDim2.new(0.99999994, 0, 0.16538462, 0)
Wait.Font = Enum.Font.SourceSans
Wait.Text = "Please wait!"
Wait.TextColor3 = Color3.fromRGB(149, 163, 255)
Wait.TextScaled = true
Wait.TextSize = 37.000
Wait.TextWrapped = true

UIAspectRatioConstraint_10.Parent = Wait
UIAspectRatioConstraint_10.AspectRatio = 8.977
UIAspectRatioConstraint_10.AspectType = Enum.AspectType.ScaleWithParentSize

UITextSizeConstraint_3.Parent = Wait
UITextSizeConstraint_3.MaxTextSize = 37

UIAspectRatioConstraint_11.Parent = LoadingFrame
UIAspectRatioConstraint_11.AspectRatio = 1.485
UIAspectRatioConstraint_11.AspectType = Enum.AspectType.ScaleWithParentSize

-- Logic

--variables
local player = game.Players.LocalPlayer
local gameid = game.PlaceId

-- functions
local function load()
	LoadingFrame.Visible = true
end
local function keysystem()
	KeySystem.Visible = true -- no logic to keysystem added yet.
end

if gameid == 0 then
	print("uhh what is this game?")
elseif gameid == 1 then
	print("uhh another random game")
else
	loadstring(game:HttpGet("https://raw.githubusercontent.com/fhetsz/Roblox---BBB-hub./refs/heads/main/Universal.lua"))()	
	print("loading universal")
	load()
end
