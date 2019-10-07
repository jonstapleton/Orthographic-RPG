local class = require 'core/middleclass'

local Tile = class('Tile')

function Tile:constructor(x, y, sheet, quad)
  self.x = x
  self.y = y
  self.sheet = sheet
  -- if quad is actually a quad...
  self.quad = quad or nil
  local w, h = quad:getTextureDimensions()
  self.w = w
  self.h = h
end

function Tile:update(dt)

end

function Tile:draw()
  if self.quad then
    love.graphics.draw(self.sheet, self.quad, self.x, self.y)
  end
end

return Tile