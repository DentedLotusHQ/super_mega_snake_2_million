local class = require "middleclass"
local sti = require "lib/sti"
local input = require("input/input"):new("keyboard")
local keyboard = require("input/keyboard"):new()

local Snake = class("Snake")

function Snake:initialize()
    self.x = 96
    self.y = 96
    self.grid_x = 96
    self.grid_y = 96
    self.speed = 0.1
    self.img = love.graphics.newImage("assets/snek.png")
    self.direction = "down"
end

function Snake:update(dt)
    self:move(dt)
end

function Snake:move(dt)
    local tempDirection = input:setMovement()

    if tempDirection then
        self.direction = tempDirection
    end

    if self.direction == ("up") and self:checkForEdge(self.direction) then
        self.grid_y = self.grid_y - 16
        self.y = self.y - (self.y - self.grid_y)
    end
    if self.direction == ("left") and self:checkForEdge(self.direction) then
        self.grid_x = self.grid_x - 16
        self.x = self.x - (self.x - self.grid_x)
    end
    if self.direction == ("down") and self:checkForEdge(self.direction) then
        self.grid_y = self.grid_y + 16
        self.y = self.y - (self.y - self.grid_y)
    end
    if self.direction == ("right") and self:checkForEdge(self.direction) then
        self.grid_x = self.grid_x + 16
        self.x = self.x - (self.x - self.grid_x)
    end
end

-- Temporary edge collision detection
-- There is probably a better way to do this
function Snake:checkForEdge(direction)
    if direction == "up" then
        -- Artifical number so we don't go under the header
        -- Should fix this elsewhere.
        if self.grid_y > 80 then
            return true
        else
            return false
        end
    end

    if direction == "down" then
        if self.grid_y < (love.graphics:getHeight()) then
            return true
        else
            return false
        end
    end

    if direction == "left" then
        if self.grid_x > 0 then
            return true
        else
            return false
        end
    end

    if direction == "right" then
        if self.grid_x < (love.graphics:getWidth() - self.img:getWidth()) then
            return true
        else
            return false
        end
    end
end

function Snake:draw()
    love.graphics.draw(self.img, self.x, self.y, 0, 1, 1, 0, 16)
end

return Snake
