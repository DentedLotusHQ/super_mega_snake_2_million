Class = require "middleclass"
Screen = Class("Screen")
function Screen:initialize()
  self.message = ""
end

function Screen:write(msg)
  self.message = msg
end

function Screen:draw()
  love.graphics.print(self.message)
end

return Screen
