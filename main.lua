
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
  love.window.setMode(width, height)
  love.graphics.setBackgroundColor(COLOR.DARKGREEN)

  -- Game elements
  grabber = GrabberClass:new()
  drawnCards = {}

  table.insert(drawnCards, CardClass:new())
  table.insert(drawnCards, CardClass:new())
  table.insert(drawnCards, CardClass:new())
  table.insert(drawnCards, CardClass:new())
  
  print(width .. ", " .. height)
end

function love.update()
  grabber:update()
  checkForMouseHover()

  for _, card in ipairs(drawnCards) do
    card:update()
  end
end

function love.draw()
  -- Zone outlines
  love.graphics.setColor(COLOR.LIME, 1)
  local zonePosY = borderMargin + cardHeight
  love.graphics.rectangle("line", borderMargin, borderMargin, width - 2*borderMargin, height - 2*borderMargin)
  love.graphics.rectangle("line", borderMargin, zonePosY, zoneWidth, zoneHeight)
  love.graphics.rectangle("line", borderMargin + zoneWidth + zoneMargin, borderMargin, zoneWidth, zoneHeight)
  love.graphics.rectangle("line", borderMargin + 2*zoneWidth + 2*zoneMargin, borderMargin, zoneWidth, zoneHeight)
  love.graphics.rectangle("line", borderMargin, borderMargin + zoneHeight + zoneMargin, zoneWidth, zoneHeight)
  love.graphics.rectangle("line", borderMargin + zoneWidth + zoneMargin, borderMargin + zoneHeight + zoneMargin, zoneWidth, zoneHeight)
  love.graphics.rectangle("line", borderMargin + 2*zoneWidth + 2*zoneMargin, borderMargin + zoneHeight + zoneMargin, zoneWidth, zoneHeight)

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
