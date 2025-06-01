
gameState = {
  turn = 1,
  phase = nil
}
winningScore = 20
turnLimit = false   -- Off by default
maxTurns = 0
numPlayers = 2  -- Two players by default

width = love.graphics.getWidth()
height = love.graphics.getHeight()
centerX, centerY = width/2, height/2

cardWidth, cardHeight = 50, 70
