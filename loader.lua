local a=game:GetService("Players").LocalPlayer
local b=a:WaitForChild("PlayerGui")
local c=Instance.new("ScreenGui")
c.Name="CustomGui"
c.Parent=b
local d=Instance.new("Frame")
d.Name="MainFrame"
d.Size=UDim2.new(0,300,0,370)
d.Position=UDim2.new(0.35,0,0.3,0)
d.BackgroundColor3=Color3.fromRGB(30,30,30)
d.BorderSizePixel=0
d.Visible=false
d.Active=true
d.Draggable=true
d.Parent=c
local function e(f,g)
 local h=Instance.new("TextButton")
 h.Size=UDim2.new(0,280,0,40)
 h.Position=UDim2.new(0,10,0,f)
 h.BackgroundColor3=Color3.fromRGB(70,70,70)
 h.BorderSizePixel=0
 h.Text=g
 h.TextColor3=Color3.fromRGB(255,255,255)
 h.Font=Enum.Font.GothamBold
 h.TextSize=18
 h.MouseEnter:Connect(function()h.BackgroundColor3=Color3.fromRGB(100,100,100)end)
 h.MouseLeave:Connect(function()h.BackgroundColor3=Color3.fromRGB(70,70,70)end)
 h.Parent=d
 return h
end
local function i(j,k)
 local l=Instance.new("TextBox")
 l.Size=UDim2.new(0,120,0,30)
 l.Position=UDim2.new(0,10,0,j)
 l.BackgroundColor3=Color3.fromRGB(80,80,80)
 l.BorderSizePixel=0
 l.PlaceholderText=k
 l.TextColor3=Color3.fromRGB(255,255,255)
 l.Font=Enum.Font.Gotham
 l.TextSize=16
 l.ClearTextOnFocus=false
 l.Parent=d
 return l
end
local m=Instance.new("TextButton")
m.Name="ToggleButton"
m.Size=UDim2.new(0,120,0,40)
m.Position=UDim2.new(0,10,0,10)
m.BackgroundColor3=Color3.fromRGB(50,50,50)
m.BorderSizePixel=0
m.Text="Toggle Menu"
m.TextColor3=Color3.fromRGB(255,255,255)
m.Font=Enum.Font.GothamBold
m.TextSize=16
m.Parent=c
m.MouseButton1Click:Connect(function()d.Visible=not d.Visible end)
local n=e(10,"Infinite Spin")
n.MouseButton1Click:Connect(function()
 game:GetService("ReplicatedStorage").Remotes.SpinPrizeEvent:FireServer(10)
end)
local o=e(60,"Add x10 Coin")
o.MouseButton1Click:Connect(function()
 game:GetService("ReplicatedStorage").Remotes.SpinPrizeEvent:FireServer(8)
end)
local p=e(110,"Give Op Pet")
p.MouseButton1Click:Connect(function()
 game:GetService("ReplicatedStorage").Remotes.SpinPrizeEvent:FireServer(4)
end)
local q=e(160,"Dark Dragon Dupe")
q.MouseButton1Click:Connect(function()
 local r={[1]="Dark Dragon"}
 game:GetService("ReplicatedStorage").Remotes.PetCageEvent:FireServer(unpack(r))
end)
local s=i(210,"Cup İsmi (örnek: Cup4)")
local t=i(250,"Kaç kere (örnek: 1)")
local u=e(290,"Give Win")
u.MouseButton1Click:Connect(function()
 local v=s.Text
 local w=tonumber(t.Text) or 1
 if v=="" then warn("Lütfen Cup ismini yaz.") return end
 for x=1,w do
  local y={[1]=v}
  game:GetService("ReplicatedStorage").Remotes.TreasureEvent:FireServer(unpack(y))
  wait(0.4)
 end
end)
