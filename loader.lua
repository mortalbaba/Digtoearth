local a=Instance.new("\83\99\114\101\101\110\71\117\105")
local b=Instance.new("\70\114\97\109\101")
local c=Instance.new("\84\101\120\116\66\117\116\116\111\110")
local d=Instance.new("\84\101\120\116\66\117\116\116\111\110")
local e=Instance.new("\84\101\120\116\66\117\116\116\111\110")
local f=Instance.new("\84\101\120\116\66\117\116\116\111\110")

a.Parent=game.Players.LocalPlayer:WaitForChild("\80\108\97\121\101\114\71\117\105")
a.Name="\67\117\115\116\111\109\71\117\105"

b.Name="\77\97\105\110"
b.Parent=a
b.BackgroundColor3=Color3.fromRGB(25,25,25)
b.Position=UDim2.new(0.3,0,0.3,0)
b.Size=UDim2.new(0,250,0,200)
b.Active=true
b.Draggable=true

c.Name="\84\111\103\103\108\101"
c.Parent=a
c.BackgroundColor3=Color3.fromRGB(50,50,50)
c.Position=UDim2.new(0,10,0,10)
c.Size=UDim2.new(0,100,0,40)
c.Text="\84\111\103\103\108\101\32\77\101\110\117"
c.TextColor3=Color3.fromRGB(255,255,255)
c.MouseButton1Click:Connect(function()
	b.Visible=not b.Visible
end)

d.Name="\83\112\105\110"
d.Parent=b
d.BackgroundColor3=Color3.fromRGB(100,100,100)
d.Position=UDim2.new(0.1,0,0.1,0)
d.Size=UDim2.new(0,200,0,40)
d.Text="\73\110\102\105\110\105\116\101\32\83\112\105\110"
d.TextColor3=Color3.fromRGB(255,255,255)
d.MouseButton1Click:Connect(function()
	game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").Remotes.SpinPrizeEvent:FireServer(10)
end)

e.Name="\120\49\48\67\111\105\110"
e.Parent=b
e.BackgroundColor3=Color3.fromRGB(100,100,100)
e.Position=UDim2.new(0.1,0,0.4,0)
e.Size=UDim2.new(0,200,0,40)
e.Text="\65\100\100\32\120\49\48\32\67\111\105\110"
e.TextColor3=Color3.fromRGB(255,255,255)
e.MouseButton1Click:Connect(function()
	game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").Remotes.SpinPrizeEvent:FireServer(8)
end)

f.Name="\79\112\80\101\116"
f.Parent=b
f.BackgroundColor3=Color3.fromRGB(100,100,100)
f.Position=UDim2.new(0.1,0,0.7,0)
f.Size=UDim2.new(0,200,0,40)
f.Text="\71\105\118\101\32\79\112\32\80\101\116"
f.TextColor3=Color3.fromRGB(255,255,255)
f.MouseButton1Click:Connect(function()
	game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").Remotes.SpinPrizeEvent:FireServer(4)
end)
