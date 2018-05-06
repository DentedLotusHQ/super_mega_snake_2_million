Class = require "lib.middleclass"
TextElement = require "models.ui.elements.TextElement"
Rect = require "models.ui.shapes.Rect"
UI = Class("UI")
local graphics = love.graphics
function UI:initialize(game)
  self.elements = {}
  self.game = game or {["score"] = 444, ["timer"] = 55}
  self:build_header()
end
function UI:build_header()
  local header = Rect:new(0, 0, graphics.getWidth(), 70, "fill")
  header:add_element(Rect:new(5, 5, graphics.getWidth() - 10, 60, "line", {1, 0, 0, 1}))
  header:add_element(TextElement:new(10, 10, "Super Mega Snake 2 Million"))
  header:add_element(TextElement:new(10, 40, "Score:"))
  header:add_element(TextElement:new(80, 40, self.game.score))
  header:add_element(TextElement:new(graphics.getWidth() - 30, 10, self.game.timer))
  header:add_element(border)
  table.insert(self.elements, header)
end
function UI:draw()
  for i = 1, #self.elements do
    self.elements[i]:draw()
  end
end
return UI
