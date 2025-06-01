
io.stdout:setvbuf("no")

require "card"
require "colors-rgb"
require "config"
require "const"
require "deck"
require "game"
require "grabber"
require "player"
require "vector"
require "zone"

function love.load()
  love.window.setTitle("Clash of Titans")

  -- Set the window and background
  love.window.setMode(960, 640)
  love.graphics.setBackgroundColor(COLOR.DARKGREEN)

  grabber = GrabberClass:new()
end

function love.update()
  grabber:update()
end

function love.draw()

end

