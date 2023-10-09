-- masta mark

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(0, 100, 0, 100)

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(-0.670000017, 0, 5.94000006, 0)
ImageLabel.Size = UDim2.new(0, 552, 0, 262)
ImageLabel.Image = "rbxassetid://14811035027"

local function blackballs()
	local script = Instance.new('LocalScript', ImageLabel)

	local image = script.Parent
	
	while wait() do
		image.Image = "rbxassetid://15021218759"
		wait(2)
		image.Image = "rbxassetid://15021231907"
		wait(2)
	end
end
coroutine.wrap(blackballs)()
