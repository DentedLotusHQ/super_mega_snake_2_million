local class = require "middleclass"
local sti = require "lib/sti"
local Map = class("Map")

function Map:initialize(map_file)
  self.map = sti(map_file)
end

function Map:draw()
  self.map:draw()
end

function Map:update(dt)
  self.map:update(dt)
end

return Map
