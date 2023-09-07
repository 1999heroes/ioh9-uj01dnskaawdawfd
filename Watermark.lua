-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local mastaskid = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 10
TextLabel.Position = UDim2.new(0.0683229044, 0, 0.326017827, 0)
TextLabel.Size = UDim2.new(0, 156, 0, 45)
TextLabel.Font = Enum.Font.LuckiestGuy
TextLabel.Text = "FPS"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 30.000

UICorner.CornerRadius = UDim.new(0, 100)
UICorner.Parent = TextLabel

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(245, 134, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient.Parent = TextLabel

mastaskid.Name = "mastaskid"
mastaskid.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
mastaskid.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = mastaskid
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(-0.0463362075, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 390, 0, 227)
ImageLabel.Image = "rbxassetid://14703329271"

-- Scripts:

local function ZNVU_fake_script() -- TextLabel.FPS 
	local script = Instance.new('LocalScript', TextLabel)

	while wait() do
		local amount = math.floor(workspace:GetRealPhysicsFPS())
		script.Parent.Text = "FPS:"..amount
	end
end
coroutine.wrap(ZNVU_fake_script)()
