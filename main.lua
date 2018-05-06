local screen = require("models/ui/Screen"):new()
local input = require("input/input"):new("keyboard")
local map = require("map/map"):new("assets/basemap.lua")
local ui = require("models.ui.UI"):new()
local timer = require("game.Timer"):new()
local gameManager = require("game.GameManager"):new(timer)
local mouse = require("game.characters.mouse"):new()
function love.load()
end

function love.update(dt)
  map:update(dt)
end

function love.draw()
  map:draw()
  ui:draw()
  mouse:draw()
end
