local input = require("input/input"):new("keyboard")
<<<<<<< HEAD
local map = require("map/map"):new("assets/basemap.lua")
local ui = require("models.ui.UI"):new()
local timer = require("game.Timer"):new()
local gameManager = require("game.GameManager"):new(timer)
local mouse = require("game.characters.mouse"):new()
=======
local ui = require("models.ui.UI"):new()
local timer = require("game.Timer"):new()
local gameManager = require("game.GameManager"):new(timer)
local map = require("map/map"):new("assets/basemap.lua")
local mouse = require("game.characters.mouse"):new()

>>>>>>> 8bdd9d28d30ff8cb04e03141efe207fc0fde40ba
function love.load()
end

function love.update(dt)
  local xy = input:getMovement()
  gameManager:update(dt)
<<<<<<< HEAD
  map:update(dt)
end

function love.draw()
  map:draw()
  ui:draw()
=======
end

function love.draw()
  ui:draw()
  map:update(dt)
  map:draw()
>>>>>>> 8bdd9d28d30ff8cb04e03141efe207fc0fde40ba
  mouse:draw()
end
