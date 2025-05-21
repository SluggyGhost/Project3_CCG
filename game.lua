
GameClass = {}

function GameClass:new()
  local game = {}
  local metadata = {__index = GameClass}
  setmetatable(game, metadata)

  return game
end

function GameClass:update()
end
