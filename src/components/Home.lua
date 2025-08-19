-- filepath: roblox-ui-executor/roblox-ui-executor/src/components/Home.lua

local Home = {}

function Home:new()
    local instance = {}
    setmetatable(instance, self)
    self.__index = self

    instance.frame = Instance.new("Frame")
    instance.frame.Size = UDim2.new(1, 0, 1, 0)
    instance.frame.BackgroundTransparency = 0.5
    instance.frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    instance.frame.BorderSizePixel = 0

    -- Glassmorphism effect
    local glassEffect = Instance.new("UIGradient")
    glassEffect.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255), Color3.fromRGB(200, 200, 200))
    glassEffect.Rotation = 90
    glassEffect.Parent = instance.frame

    instance.title = Instance.new("TextLabel")
    instance.title.Size = UDim2.new(0, 300, 0, 50)
    instance.title.Position = UDim2.new(0.5, -150, 0, 20)
    instance.title.Text = "Roblox UI Executor"
    instance.title.TextColor3 = Color3.fromRGB(0, 0, 0)
    instance.title.BackgroundTransparency = 1
    instance.title.Font = Enum.Font.SourceSansBold
    instance.title.TextSize = 24
    instance.title.Parent = instance.frame

    instance.button = Instance.new("TextButton")
    instance.button.Size = UDim2.new(0, 200, 0, 50)
    instance.button.Position = UDim2.new(0.5, -100, 0.5, -25)
    instance.button.Text = "Start"
    instance.button.TextColor3 = Color3.fromRGB(255, 255, 255)
    instance.button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    instance.button.BorderSizePixel = 0
    instance.button.Parent = instance.frame

    return instance
end

function Home:show(parent)
    self.frame.Parent = parent
end

function Home:hide()
    self.frame.Parent = nil
end

return Home