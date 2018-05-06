local input = require("input/input"):new("keyboard")
local map = require("map/map"):new("assets/basemap.lua")
local timer = require("game.Timer"):new()
local gameManager = require("game.GameManager"):new(timer)
local mouse = require("game.characters.mouse"):new()
local map = require("map/map"):new("assets/basemap.lua")
function love.load()
end

function love.update(dt)
  local xy = input:getMovement()
  gameManager:update(dt)
end

function love.draw()
  ui:draw()
  mouse:draw()
  map:update(dt)
  map:draw()
  mouse:draw()
end
