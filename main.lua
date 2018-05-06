local input = require("input/input"):new("keyboard")
local ui = require("models.ui.UI"):new()
function love.load()
end

function love.update(dt)
  local xy = input:getMovement()
end

function love.draw()
  ui:draw()
end
