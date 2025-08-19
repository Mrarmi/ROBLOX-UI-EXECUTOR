-- filepath: roblox-ui-executor/src/main.lua

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ScreenGui = Instance.new("ScreenGui")
local Home = require(script.components.Home)
local Main = require(script.components.Main)

ScreenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")

local function initializeUI()
    local homeComponent = Home.new()
    homeComponent:Render(ScreenGui)

    local mainComponent = Main.new()
    mainComponent:Render(ScreenGui)
end

initializeUI()