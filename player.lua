
PlayerClass = {}

function PlayerClass:new()
  local player = {}
  local metadata = {__index = PlayerClass}
  setmetatable(player, metadata)

  player.hand = {}
  player.mana = 0
  player.score = 0

  return player
end
