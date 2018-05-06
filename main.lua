local screen = require("models/ui/Screen"):new()
local input = require("input/input"):new("keyboard")

function love.load()
end

function love.update(dt)
    local xy = input:getMovement()
end

function love.draw()
end
