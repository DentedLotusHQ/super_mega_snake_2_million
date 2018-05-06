Class = require "lib.middleclass"
Vector2 = Class("Vector2")
Vector2.static.Up = Vector2:new(0, 1)
Vector2.static.Down = Vector2:new(0, 1)
Vector2.static.Left = Vector2:new(-1, 0)
Vector2.static.Right = Vector2:new(1, 0)
Vector2.static.Zero = Vector2:new(0, 0)
function Vector2:initialize(x, y)
  self.x = x
  self.y = y
  return self
end
function Vector2:__tostring()
  return "X:" .. tostring(self.x) .. ", Y:" .. tostring(self.y)
end
return Vector2
