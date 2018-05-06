Class = require "lib.middleclass"
GameManager = Class("GameManager")

function GameManager:initialize(timer)
  self.timer = timer
  self.paused = false
end

function GameManager:update(dt)
  if self.paused then
    return
  end
  self.timer:update(dt)
end

return GameManager
