local class = require "middleclass"
local sti = require "lib/sti"
local Map = class("Map")

function Map:initialize(map_file)
    self.map = sti(map_file)

    self.snake = require("map/snake"):new(self.map)

    -- Remove player so it doesn't stick on map
    self.map:removeLayer("Player")
end

function Map:draw()
    self.map:draw()
    self.snake:draw()
end

function Map:update(dt)
    self.map:update(dt)
    self.snake:update()
end

return Map
