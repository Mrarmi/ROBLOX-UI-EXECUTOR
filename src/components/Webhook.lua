-- filepath: roblox-ui-executor/roblox-ui-executor/src/components/Webhook.lua

local Webhook = {}

function Webhook:new()
    local instance = {}
    setmetatable(instance, self)
    self.__index = self

    instance.url = ""
    instance.payload = {}
    instance.headers = {}

    return instance
end

function Webhook:setUrl(url)
    self.url = url
end

function Webhook:setPayload(payload)
    self.payload = payload
end

function Webhook:setHeaders(headers)
    self.headers = headers
end

function Webhook:send()
    if self.url == "" then
        error("Webhook URL is not set.")
    end

    -- Here you would implement the logic to send the webhook
    -- This is a placeholder for the actual sending logic
    print("Sending webhook to: " .. self.url)
    print("Payload: ", self.payload)
    print("Headers: ", self.headers)
end

return Webhook