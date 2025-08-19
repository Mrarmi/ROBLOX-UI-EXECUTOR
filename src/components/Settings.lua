-- filepath: roblox-ui-executor/roblox-ui-executor/src/components/Settings.lua

local Settings = {}

function Settings:new()
    local instance = {}
    setmetatable(instance, self)
    self.__index = self

    instance.options = {
        option1 = true,
        option2 = false,
        option3 = "default"
    }

    return instance
end

function Settings:getOptions()
    return self.options
end

function Settings:setOption(key, value)
    if self.options[key] ~= nil then
        self.options[key] = value
    end
end

function Settings:resetOptions()
    self.options = {
        option1 = true,
        option2 = false,
        option3 = "default"
    }
end

return Settings