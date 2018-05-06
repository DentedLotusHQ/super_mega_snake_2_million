local Class = require "lib.middleclass"
local TextElement = require "models.ui.elements.TextElement"
local Rect = require "models.ui.shapes.Rect"
local UI = Class("UI")
local graphics = love.graphics
function UI:initialize(game)
  self.elements = {}
  self.game = game
  self:build_header()
end
function UI:build_header()
  local header = Rect:new(0, 0, graphics.getWidth(), 70, "fill")
  header:add_element(Rect:new(5, 5, graphics.getWidth() - 10, 60, "line", {1, 0, 0, 1}))
  header:add_element(TextElement:new(10, 10, "Super Mega Snake 2 Million"))
  header:add_element(TextElement:new(10, 40, "Score:"))
  header:add_element(TextElement:new(graphics.getWidth() / 2 - 100, 40, "High Score:"))
  header:add_element(TextElement:new(graphics.getWidth() - 100, 10, "Timer:"))
  table.insert(self.elements, header)
end
function UI:draw()
  for i = 1, #self.elements do
    self.elements[i]:draw()
    graphics.setColor({0, 0, 0, 255})
    graphics.printf(tostring(self.game.timer), graphics.getWidth() - 40, 10, 30, "right")
    graphics.printf(tostring(self.game.score), 80, 40, 50, "right")
    graphics.printf(self.game.high_score, graphics.getWidth() / 2 - 20, 40, 150)
    if self.game.is_paused then
      graphics.printf("PAUSED", graphics.getWidth() / 2 - 20, 20, 150)
    end
    graphics.reset()
  end
end
return UI
