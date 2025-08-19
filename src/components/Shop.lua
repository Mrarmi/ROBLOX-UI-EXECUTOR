-- filepath: roblox-ui-executor/roblox-ui-executor/src/components/Shop.lua

local Shop = {}

function Shop:new()
    local shopUI = Instance.new("ScreenGui")
    local frame = Instance.new("Frame")
    local titleLabel = Instance.new("TextLabel")
    local itemList = Instance.new("ScrollingFrame")
    
    shopUI.Name = "ShopUI"
    shopUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    frame.Name = "ShopFrame"
    frame.Parent = shopUI
    frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame.BackgroundTransparency = 0.5
    frame.Size = UDim2.new(0.5, 0, 0.5, 0)
    frame.Position = UDim2.new(0.25, 0, 0.25, 0)
    frame.BorderSizePixel = 0
    frame.Style = Enum.FrameStyle.Custom

    titleLabel.Name = "TitleLabel"
    titleLabel.Parent = frame
    titleLabel.Text = "Shop"
    titleLabel.Size = UDim2.new(1, 0, 0.1, 0)
    titleLabel.Position = UDim2.new(0, 0, 0, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    titleLabel.TextScaled = true

    itemList.Name = "ItemList"
    itemList.Parent = frame
    itemList.Size = UDim2.new(1, 0, 0.9, 0)
    itemList.Position = UDim2.new(0, 0, 0.1, 0)
    itemList.BackgroundTransparency = 1
    itemList.ScrollBarThickness = 10

    return shopUI
end

return Shop