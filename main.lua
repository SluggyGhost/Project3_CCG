
io.stdout:setvbuf("no")

require "card"
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

  -- Game elements
  grabber = GrabberClass:new()
  drawnCards = {}

  table.insert(drawnCards, CardClass:new())
end

function love.update()
  grabber:update()
  checkForMouseHover()

  for _, card in ipairs(drawnCards) do
    card:update()
  end
end

function love.draw()
  for _, card in ipairs(drawnCards) do
    card:draw()
  end

  love.graphics.setColor(COLOR.WHITE)
  if grabber.currentMousePos then
    love.graphics.print("Mouse: " .. tostring(grabber.currentMousePos.x) .. ", " .. tostring(grabber.currentMousePos.y))
  end
end

function checkForMouseHover()
  if not grabber.currentMousePos then
    return
  end

  for _, card in ipairs(drawnCards) do
    card:checkForMouseOver(grabber)
  end
end
