
local titleScreen = {}

local playButton = {
  x = 300, y = 400, width = 200, height = 60,
  text = "Play Game"
}

function titleScreen.load()
  titleFont = love.graphics.newFont(48)
  buttonFont = love.graphics.newFont(24)
end

function titleScreen.update()
  -- animations here
end

function titleScreen.draw()
  -- title
  love.graphics.setFont(titleFont)
  local title = "My Awesome Game"
  local textWidth = titleFont:getWidth(title)
  love.graphics.printf(title, 0, 150, love.graphics.getWidth(), "center")
  
  -- play button
  love.graphics.setFont(buttonFont)
  love.graphics.rectangle("line", playButton.x, playButton.y, playButton.width, playButton.height)
  local textW = buttonFont:getWidth(playButton.text)
  loacl textH = buttonFont:getHeight()
  love.graphics.print(playButton.text, playButton.x + (playButton.width - textW) / 2, playButton.y + (playButton.height - textH) / 2)
end

function titleScreen.mousepressed(x, y, button)
  if button == 1 then
    if x > playButton.x and x < playButton.x + playButton.width and y > playButton.y and y < playButton.y + playButton.height then
      return GAME_STATE.PLAY
    end
  end
end

return titleScreen
