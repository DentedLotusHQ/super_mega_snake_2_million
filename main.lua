local input = require("input/input"):new("keyboard")
local ui = require("models.ui.UI"):new()
local timer = require("game.Timer"):new()
local gameManager = require("game.GameManager"):new(timer)
local mouse = require("game.characters.mouse"):new()
function love.load()
end

function love.update(dt)
  local xy = input:getMovement()
  gameManager:update(dt)
end

function love.draw()
  ui:draw()
  mouse:draw()
end
