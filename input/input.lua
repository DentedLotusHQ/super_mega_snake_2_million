local class = require "middleclass"

local Input = class("Input")

function Input:initialize(input_method)
  self.inputDevice = require("input/" .. input_method):new()
end

function Input:setMovement()
  return self.inputDevice:setMovement()
end

return Input
