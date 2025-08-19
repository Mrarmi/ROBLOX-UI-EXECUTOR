-- filepath: roblox-ui-executor/roblox-ui-executor/src/components/Inventory.lua

local Inventory = {}

function Inventory:new()
    local newObj = {
        items = {},
        selectedItem = nil,
    }
    self.__index = self
    return setmetatable(newObj, self)
end

function Inventory:addItem(item)
    table.insert(self.items, item)
end

function Inventory:removeItem(item)
    for i, v in ipairs(self.items) do
        if v == item then
            table.remove(self.items, i)
            break
        end
    end
end

function Inventory:selectItem(item)
    self.selectedItem = item
end

function Inventory:deselectItem()
    self.selectedItem = nil
end

function Inventory:render()
    -- Code to render the inventory UI with glassmorphism effect
    -- This will include iterating through self.items and displaying them
end

return Inventory