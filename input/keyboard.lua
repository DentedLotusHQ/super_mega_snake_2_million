local class = require "middleclass"

local Keyboard = class("Keyboard")

function Keyboard:initialize()
end

function Keyboard:setMovement()
  if love.keyboard.isDown("w") then
    direction = "up"
  end
  if love.keyboard.isDown("a") then
    direction = "left"
  end
  if love.keyboard.isDown("s") then
    direction = "down"
  end
  if love.keyboard.isDown("d") then
    direction = "right"
  end
  return direction
end

return Keyboard
