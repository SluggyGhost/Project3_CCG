
gameState = {
  turn = 1,
  phase = nil
}
winningScore = 20
turnLimit = false   -- Off by default
maxTurns = 0
numPlayers = 2  -- Two players by default

width = 960
height = 640
centerX, centerY = width/2, height/2
borderMargin = height/20

cardWidth, cardHeight = 80, 112

zoneMargin = borderMargin/2
zoneWidth = (width - (2*borderMargin) - (2*zoneMargin)) / 3
zoneHeight = (height - (2*borderMargin) - zoneMargin - (2*cardHeight)) / 2
