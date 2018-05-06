Class = require "lib.middleclass"
Timer = Class("Timer")

function Timer:initialize()
  self.count = 0
end

function Timer:update(dt)
  self.count = self.count + dt
end

function Timer:__tostring()
  return string.format("%.1f", self.count)
end
return Timer
