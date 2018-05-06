local screen = require("models/ui/Screen"):new()
local input = require("input/input"):new("keyboard")
local map = require("map/map"):new("assets/basemap.lua")

function love.load()
end

function love.update(dt)
    map:update(dt)
end

function love.draw()
    map:draw()
end
