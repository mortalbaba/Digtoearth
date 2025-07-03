local a=game:GetService("\80\108\97\121\101\114\115")
local b=a.LocalPlayer
local c=b:WaitForChild("\80\108\97\121\101\114\71\117\105")

local d=Instance.new("\83\99\114\101\101\110\71\117\105")
d.Name="\67\117\115\116\111\109\71\117\105"
d.Parent=c

local e=Instance.new("\70\114\97\109\101")
e.Name="\77\97\105\110\70\114\97\109\101"
e.Size=UDim2.new(0,300,0,370)
e.Position=UDim2.new(0.35,0,0.3,0)
e.BackgroundColor3=Color3.fromRGB(30,30,30)
e.BorderSizePixel=0
e.Visible=false
e.Active=true
e.Draggable=true
e.Parent=d

local function f(g,h)
	local i=Instance.new("\84\101\120\116\66\117\116\116\111\110")
	i.Size=UDim2.new(0,280,0,40)
	i.Position=UDim2.new(0,10,0,h)
	i.BackgroundColor3=Color3.fromRGB(70,70,70)
	i.BorderSizePixel=0
	i.Text=g
	i.TextColor3=Color3.fromRGB(255,255,255)
	i.Font=Enum.Font.GothamBold
	i.TextSize=18
	i.MouseEnter:Connect(function() i.BackgroundColor3=Color3.fromRGB(100,100,100) end)
	i.MouseLeave:Connect(function() i.BackgroundColor3=Color3.fromRGB(70,70,70) end)
	i.Parent=e
	return i
end

local function j(k,l)
	local m=Instance.new("\84\101\120\116\66\111\120")
	m.Size=UDim2.new(0,120,0,30)
	m.Position=UDim2.new(0,10,0,l)
	m.BackgroundColor3=Color3.fromRGB(80,80,80)
	m.BorderSizePixel=0
	m.PlaceholderText=k
	m.TextColor3=Color3.fromRGB(255,255,255)
	m.Font=Enum.Font.Gotham
	m.TextSize=16
	m.ClearTextOnFocus=false
	m.Parent=e
	return m
end

local n=Instance.new("\84\101\120\116\66\117\116\116\111\110")
n.Name="\84\111\103\103\108\101\66\117\116\116\111\110"
n.Size=UDim2.new(0,120,0,40)
n.Position=UDim2.new(0,10,0,10)
n.BackgroundColor3=Color3.fromRGB(50,50,50)
n.BorderSizePixel=0
n.Text="\84\111\103\103\108\101\32\77\101\110\117"
n.TextColor3=Color3.fromRGB(255,255,255)
n.Font=Enum.Font.GothamBold
n.TextSize=16
n.Parent=d
n.MouseButton1Click:Connect(function()
	e.Visible=not e.Visible
end)

local o=f("\73\110\102\105\110\105\116\101\32\83\112\105\110",50)
o.MouseButton1Click:Connect(function()
	game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").Remotes.SpinPrizeEvent:FireServer(10)
end)

local p=f("\65\100\100\32\120\49\48\32\67\111\105\110",90)
p.MouseButton1Click:Connect(function()
	game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").Remotes.SpinPrizeEvent:FireServer(8)
end)

local q=f("\71\105\118\101\32\79\112\32\80\101\116",130)
q.MouseButton1Click:Connect(function()
	game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").Remotes.SpinPrizeEvent:FireServer(4)
end)

local r=f("\68\97\114\107\32\68\114\97\103\111\110\32\68\117\112\101",170)
r.MouseButton1Click:Connect(function()
	game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").Remotes.PetCageEvent:FireServer("\68\97\114\107\32\68\114\97\103\111\110")
end)

local s=j("\67\117\112\32\xDD\163\x6D\163\32\40\x6F\x72\156\x65\x6B\x3A\32\67\117\112\64\x34\41",210)
local t=j("\75\x61\xE7\x20\x6B\x65\x72\x65\x20\x28\x6F\x72\x6E\x65\x6B\x3A\x20\x31\x29",250)
local u=f("\71\105\118\101\32\87\105\110",290)
u.MouseButton1Click:Connect(function()
	local v=s.Text
	local w=tonumber(t.Text) or 1
	if v=="" then warn("\76\xFC\x74\x66\x65\x6E\x20\x43\x75\x70\x20\x69\x73\x6D\x69\x6E\x69\x20\x7A\x61\x79\x2E") return end
	for x=1,w do
		game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").Remotes.TreasureEvent:FireServer(v)
		wait(0.4)
	end
end)
