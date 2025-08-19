-- This file contains the styles and design elements that implement the glassmorphism effect for the UI, ensuring a smooth and modern appearance.

local Glassmorphism = {}

function Glassmorphism.new()
    local style = {
        BackgroundColor = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 0.5,
        BlurRadius = 20,
        BorderColor = Color3.fromRGB(255, 255, 255),
        BorderSizePixel = 2,
        CornerRadius = UDim.new(0, 12),
        ShadowColor = Color3.fromRGB(0, 0, 0),
        ShadowTransparency = 0.5,
        ShadowOffset = Vector2.new(0, 4),
    }
    
    return style
end

return Glassmorphism