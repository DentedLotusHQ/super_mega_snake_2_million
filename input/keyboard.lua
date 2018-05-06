local class = require "middleclass"

local Keyboard = class("Keyboard")

function Keyboard:initialize()
<<<<<<< 569b3d30a4c3cca83f6668b74a3089928fd32326
end

function Keyboard:getMovement()
    if love.keyboard.isDown("w") then
        self.player.y = self.player.y - 1
    end
    if love.keyboard.isDown("a") then
        self.player.x = self.player.x - 1
    end
    if love.keyboard.isDown("s") then
        self.player.y = self.player.y + 1
    end
    if love.keyboard.isDown("d") then
        self.player.x = self.player.x + 1
    end
=======
  self.xyTable = {}
end

function Keyboard:getMovement()
  self.xyTable["x"] = 0
  self.xyTable["y"] = 0

  if love.keyboard.isDown("w") then
    self.xyTable["y"] = self.xyTable["y"] - 1
  end
  if love.keyboard.isDown("a") then
    self.xyTable["x"] = self.xyTable["x"] - 1
  end
  if love.keyboard.isDown("s") then
    self.xyTable["y"] = self.xyTable["y"] + 1
  end
  if love.keyboard.isDown("d") then
    self.xyTable["x"] = self.xyTable["x"] + 1
  end

  return self.xyTable
>>>>>>> Highscore and Pause
end
return Keyboard
