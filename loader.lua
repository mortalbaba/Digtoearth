-- Gui Script by MortalHere
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ToggleButton = Instance.new("TextButton")
local SpinButton = Instance.new("TextButton")
local CoinButton = Instance.new("TextButton")
local PetButton = Instance.new("TextButton")
local dragging, dragInput, dragStart, startPos

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "CustomGui"

-- Frame (Ana Panel)
Frame.Name = "Main"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.Position = UDim2.new(0.3, 0, 0.3, 0)
Frame.Size = UDim2.new(0, 250, 0, 200)
Frame.Active = true
Frame.Draggable = true

-- Toggle Button
ToggleButton.Name = "Toggle"
ToggleButton.Parent = ScreenGui
ToggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ToggleButton.Position = UDim2.new(0, 10, 0, 10)
ToggleButton.Size = UDim2.new(0, 100, 0, 40)
ToggleButton.Text = "Toggle Menu"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.MouseButton1Click:Connect(function()
	Frame.Visible = not Frame.Visible
end)

-- Infinite Spin Button
SpinButton.Name = "Spin"
SpinButton.Parent = Frame
SpinButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
SpinButton.Position = UDim2.new(0.1, 0, 0.1, 0)
SpinButton.Size = UDim2.new(0, 200, 0, 40)
SpinButton.Text = "Infinite Spin"
SpinButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SpinButton.MouseButton1Click:Connect(function()
	game:GetService("ReplicatedStorage").Remotes.SpinPrizeEvent:FireServer(10)
end)

-- x10 Coin Button
CoinButton.Name = "x10Coin"
CoinButton.Parent = Frame
CoinButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
CoinButton.Position = UDim2.new(0.1, 0, 0.4, 0)
CoinButton.Size = UDim2.new(0, 200, 0, 40)
CoinButton.Text = "Add x10 Coin"
CoinButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CoinButton.MouseButton1Click:Connect(function()
	game:GetService("ReplicatedStorage").Remotes.SpinPrizeEvent:FireServer(8)
end)

-- Give Op Pet Button
PetButton.Name = "OpPet"
PetButton.Parent = Frame
PetButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
PetButton.Position = UDim2.new(0.1, 0, 0.7, 0)
PetButton.Size = UDim2.new(0, 200, 0, 40)
PetButton.Text = "Give Op Pet"
PetButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PetButton.MouseButton1Click:Connect(function()
	game:GetService("ReplicatedStorage").Remotes.SpinPrizeEvent:FireServer(4)
end)
