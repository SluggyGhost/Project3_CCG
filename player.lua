
PlayerClass = {}

function PlayerClass:new()
  local player = {}
  local metadata = {__index = PlayerClass}
  setmetatable(player, metadata)

  player.cards = {}

  return player
end
