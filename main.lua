
io.stdout:setvbuf("no")

require "card"
--require "commands"
require "config"
require "const"
--require "deck"
require "game"
require "grabber"
require "player"
require "vector"
--require "zone"

function love.load()
  love.window.setTitle("Clash of Titans")
  
  local csv = require("csvReader")
  local cards = csv.loadCSV("cards.csv")
  for _, card in ipairs(cards) do
    print("Card: " .. card.name)
    print("  Cost: " .. card.cost)
    print("  Power: " .. card.power)
    print("  Text: " .. card.text)
    print()
  end

  -- Set the window and background
  love.window.setMode(width, height)
  love.graphics.setBackgroundColor(COLOR.DARKGREEN)

  -- Game elements
  grabber = GrabberClass:new()
  drawnCards = {}

  table.insert(drawnCards, CardPrototype:new())
  table.insert(drawnCards, CardPrototype:new())
  table.insert(drawnCards, CardPrototype:new())
  table.insert(drawnCards, CardPrototype:new())
  
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
  love.graphics.rectangle("line", borderMargin, borderMargin, width - 2*borderMargin, height - 2*borderMargin)
  local zonePosY = borderMargin + cardHeight
  love.graphics.rectangle("line", borderMargin, zonePosY, zoneWidth, zoneHeight)
  love.graphics.rectangle("line", borderMargin + zoneWidth + zoneMargin, zonePosY, zoneWidth, zoneHeight)
  love.graphics.rectangle("line", borderMargin + 2*zoneWidth + 2*zoneMargin, zonePosY, zoneWidth, zoneHeight)
  zonePosY = zonePosY + zoneHeight + zoneMargin
  love.graphics.rectangle("line", borderMargin, zonePosY, zoneWidth, zoneHeight)
  love.graphics.rectangle("line", borderMargin + zoneWidth + zoneMargin, zonePosY, zoneWidth, zoneHeight)
  love.graphics.rectangle("line", borderMargin + 2*zoneWidth + 2*zoneMargin, zonePosY, zoneWidth, zoneHeight)

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
