local function b64decode(data)
    local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if x == '=' then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i - f%2^(i-1) > 0 and '1' or '0') end
        return r
    end):gsub('%d%d%d%d%d%d%d%d', function(x)
        local c=0
        for i=1,8 do c=c + (x:sub(i,i) == '1' and 2^(8-i) or 0) end
        return string.char(c)
    end))
end

local c=game:GetService(b64decode("UGxheWVycyA="))
local d=c.LocalPlayer
local e=d:WaitForChild(b64decode("UGxheWVyR3Vp"))
local f=Instance.new(b64decode("U2NyZWVuR3Vp"))
f.Name=b64decode("Q3VzdG9tR3Vp")
f.Parent=e
local g=Instance.new(b64decode("RnJhbWU="))
g.Name=b64decode("TWFpblRyYW1l")
g.Size=UDim2.new(0,300,0,370)
g.Position=UDim2.new(0.35,0,0.3,0)
g.BackgroundColor3=Color3.fromRGB(30,30,30)
g.BorderSizePixel=0
g.Visible=false
g.Active=true
g.Draggable=true
g.Parent=f

local function h(i,j)
    local k=Instance.new(b64decode("VGV4dEJ1dHRvbg=="))
    k.Size=UDim2.new(0,280,0,40)
    k.Position=UDim2.new(0,10,0,j)
    k.BackgroundColor3=Color3.fromRGB(70,70,70)
    k.BorderSizePixel=0
    k.Text=i
    k.TextColor3=Color3.fromRGB(255,255,255)
    k.Font=Enum.Font.GothamBold
    k.TextSize=18
    k.MouseEnter:Connect(function() k.BackgroundColor3=Color3.fromRGB(100,100,100) end)
    k.MouseLeave:Connect(function() k.BackgroundColor3=Color3.fromRGB(70,70,70) end)
    k.Parent=g
    return k
end

local function l(m,n)
    local o=Instance.new(b64decode("VGV4dEJveA=="))
    o.Size=UDim2.new(0,120,0,30)
    o.Position=UDim2.new(0,10,0,n)
    o.BackgroundColor3=Color3.fromRGB(80,80,80)
    o.BorderSizePixel=0
    o.PlaceholderText=m
    o.TextColor3=Color3.fromRGB(255,255,255)
    o.Font=Enum.Font.Gotham
    o.TextSize=16
    o.ClearTextOnFocus=false
    o.Parent=g
    return o
end

local p=h(b64decode("VG9nZ2xlIE1lbnU="),10)
p.MouseButton1Click:Connect(function() g.Visible=not g.Visible end)

local q=h(b64decode("SW5maW5pdGUgU3Bpbg=="),50)
q.MouseButton1Click:Connect(function()
    game:GetService(b64decode("UmVwbGljYXRlZFN0b3JhZ2U=")).Remotes.SpinPrizeEvent:FireServer(10)
end)

local r=h(b64decode("QWRkIHgxMCBDb2lu"),90)
r.MouseButton1Click:Connect(function()
    game:GetService(b64decode("UmVwbGljYXRlZFN0b3JhZ2U=")).Remotes.SpinPrizeEvent:FireServer(8)
end)

local s=h(b64decode("R2l2ZSBPcCBQZXQ="),130)
s.MouseButton1Click:Connect(function()
    game:GetService(b64decode("UmVwbGljYXRlZFN0b3JhZ2U=")).Remotes.SpinPrizeEvent:FireServer(4)
end)

local t=h(b64decode("RGFyayBEcmFnb24gRHVwZQ=="),170)
t.MouseButton1Click:Connect(function()
    game:GetService(b64decode("UmVwbGljYXRlZFN0b3JhZ2U=")).Remotes.PetCageEvent:FireServer(b64decode("RGFyayBEcmFnb24="))
end)

local u=l(b64decode("Q3VwIMO8c21pIChvw7ZybmVrOiBDdXAzKQ=="),210)
local v=l(b64decode("SsO8IGtlcmUgKOG7cm5law=="),250)
local w=h(b64decode("R2l2ZSBXaW4="),290)
w.MouseButton1Click:Connect(function()
    local x=u.Text
    local y=tonumber(v.Text) or 1
    if x=="" then warn(b64decode("TMOnw7xmdmVuIEN1cCBpc21pbmkgemF5Lg==")) return end
    for z=1,y do
        game:GetService(b64decode("UmVwbGljYXRlZFN0b3JhZ2U=")).Remotes.TreasureEvent:FireServer(x)
        wait(0.4)
    end
end)
