Class = require "lib.middleclass"
Shape = require "models.ui.shapes.Shape"
BaseElement = Class("BaseElement", Shape)
Vector2 = require "utility.Vector2"
function BaseElement:initialize()
  Shape.initialize(self)
  self.position = Vector2:new(0, 0)
end

return BaseElement
