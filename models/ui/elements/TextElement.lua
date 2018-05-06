Class = require "lib.middleclass"
BaseElement = require "models.ui.elements.BaseElement"
TextElement = Class("TextElement", BaseElement)
local graphics = love.graphics
function TextElement:initialize(x, y, text, text_height, color)
  BaseElement.initialize(self)
  self.position.x = x
  self.position.y = y
  self.text = text
  self.color = color or {0, 0, 0, 255}
  self.text_height = text_height or 1
end

function TextElement:draw()
  graphics.setColor(self.color)
  graphics.print(self.text, self.position.x, self.position.y, 0, 1, self.text_height)
  -- graphics.reset()
end

return TextElement
