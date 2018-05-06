local Class = require "lib.middleclass"
local Mouse = Class("Mouse")
local Vector2 = require "utility.Vector2"
local graphics = love.graphics

function Mouse:get_tile_position()
  math.randomseed(os.time())
  local x = math.random(0, graphics.getWidth())
  local y = math.random(80, graphics.getHeight())
  print(x, y)
  local newX = math.floor(x / 16) * 16
  local newY = math.floor(y / 16) * 16
  return Vector2:new(newX, newY)
end
function Mouse:initialize()
  self.position = self:get_tile_position()
  self.image = graphics.newImage("assets/mouse.png")
end

function Mouse:draw()
  graphics.draw(self.image, self.position.x, self.position.y)
end

return Mouse
