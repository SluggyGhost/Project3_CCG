
CardClass = {}

function CardClass:new(xPos, yPos, name, cost, power, text, isFaceUp)
  local card = {}
  local metadata = {__index = CardClass}
  setmetatable(card, metadata)

  card.position = Vector(xPos, yPos)
  card.name = name or "NAME"
  card.cost = cost or 999
  card.power = power or 999
  card.text = text or "TEXT"
  card.isFaceUp = isFaceUp or TURN_PHASE
  card.state = CARD_STATE.IDLE
  card.size = Vector(cardWidth, cardHeight)

  return card
end

function CardClass:update()
  if self.state == CARD_STATE.GRABBED and grabber then
    local mousePos = grabber.currentMousePos
    if mousePos then
      self.position = Vector(mousePos.x - self.size.x/2, mousePos.y - self.size.y/2)
    end
  end
end

function CardClass:draw()
  -- Draw drop shadow (if held or hovered)
  if self.state ~= CARD_STATE.IDLE then
    love.graphics.setColor(colorsRGB.black, 0.8)
    local offset = 4 * (self.state == CARD_STATE.GRABBED and 2 or 1)
    love.graphics.rectangle("fill", self.position.x + offset, self.position.y + offset, self.size.x, self.size.y, 6, 6)
  end

  -- Draw card base
  love.graphics.setColor(colorsRGB.white, 1)
  love.graphics.rectangle("fill", self.position.x, self.position.y, self.size.x, self.size.y, 6, 6)

  -- TODO: Draw card markings

end

function CardClass:checkForMouseOver(grabber)
  if self.state == CARD_STATE.GRABBED then
    return
  end

  local mousePos = grabber.currentMousePos
end
