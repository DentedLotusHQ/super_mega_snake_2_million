local Class = require "lib.middleclass"
local GameManager = Class("GameManager")

function file_exists(file)
  local f = io.open(file, "rb")
  if f then
    f:close()
  end
  return f ~= nil
end

function GameManager:initialize(timer)
  if not file_exists("highscore") then
    io.open("highscore", "w")
  end
  local file = io.open("highscore")
  self.high_score = file:read()
  file:close()
  self.timer = timer
  self.is_paused = false
  self.score = 0
end

function GameManager:update(dt)
  if self.paused then
    return
  end
  self.timer:update(dt)
end

function GameManager:add_score(score)
  self.score = self.score + score
end
function GameManager:toggle_pause()
  self.is_paused = not self.is_paused
end

return GameManager
