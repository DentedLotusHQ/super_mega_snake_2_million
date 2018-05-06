Class = require "lib.middleclass"
Shape = require "models.ui.shapes.Shape"
Rect = Class("Rect", Shape)
function Rect:initialize(top_left_x, top_left_y, width, height, mode, color)
  Shape.initialize(self)
  self.position.x = top_left_x
  self.position.y = top_left_y
  self:AddVertex(top_left_x, top_left_y)
  self:AddVertex(top_left_x + width, top_left_y)
  self:AddVertex(top_left_x + width, top_left_y + height)
  self:AddVertex(top_left_x, top_left_y + height)
  self.mode = mode or "fill"
  self.color = color
end
return Rect
