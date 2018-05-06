Class = require "lib.middleclass"
Vector2 = require "utility.Vector2"
Shape = Class("Shape")
local graphics = love.graphics
function Shape:initialize(x, y, color)
  local inX = x or 0
  local inY = y or 0
  self.position = Vector2:new(inX, inY)
  self.vertices = {}
  self.children = {}
  self.color = color
  self.mode = "fill"
end
function Shape:AddVertex(x, y)
  table.insert(self.vertices, Vector2:new(x, y))
end
function Shape:GetVertices()
  vArray = {}
  for i = 1, #self.vertices do
    table.insert(vArray, self.vertices[i].x)
    table.insert(vArray, self.vertices[i].y)
  end
  return vArray
end
function Shape:draw()
  if (self.color) then
    graphics.setColor(self.color)
  end
  graphics.polygon(self.mode, self:GetVertices())
  for i = 1, #self.children do
    local child = self.children[i]
    child:draw()
  end
  graphics.reset()
end
function Shape:add_element(element)
  table.insert(self.children, element)
end
return Shape
