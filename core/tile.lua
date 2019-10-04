local class = require 'core/middleclass'

local Tile = class('Tile')

function Tile:constructor(x, y, img)
  self.x = x
  self.y = y
  self.img = img or nil
  self.w = self.img:getWidth()
  self.h = self.img:getHeight()
end

function Tile:update(dt)

end

function Tile:draw()
  if self.img then
    love.graphics.draw(self.img, self.x, self.y)
  end
end

return Tile