local class = require "middleclass"
local sti = require "lib/sti"
local input = require("input/input"):new("keyboard")
local keyboard = require("input/keyboard"):new()

local Snake = class("Snake")

function Snake:initialize(map)
    self.layer = map:addCustomLayer("Sprites")

    -- Get player spawn object
    for k, object in pairs(map.objects) do
        if object.name == "Player" then
            self.player = object
            break
        end
    end
    local sprite = love.graphics.newImage("assets/snek.png")
    self.layer.player = {
        sprite = sprite,
        x = self.player.x,
        y = self.player.y
    }
end

function Snake:update()
    self.layer.update = input:getMovement()
end

function Snake:draw()
    self.layer.draw = function(self)
        love.graphics.draw(self.player.sprite, math.floor(self.player.x), math.floor(self.player.y), 0, 1, 1)
    end
end

return Snake
