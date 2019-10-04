local class = require 'core/middleclass'

local Map = class('Map')

function Map:constructor(template, gridSize, resize, x, y)
  self.tiles = {}
  self.x = x or 0
  self.y = y or 0
  self.resize = resize or false
  -- Change all filepaths to image data
  if type(template[1]) == 'table' then
    -- table is 2D
    self:create2D(template)
  else
    self:create1D(template)
  end
end

function Map:create2D(template)
  local refW
  local refH
  if self.resize = true then
    -- get the size of the image, store in refW and refH
  end
  

  --Place the tiles
  for y = 1, #template do
    for x = 1, #template do
      local tile = Tile:new(x, y, img)
      table.insert(self.tiles, tile)
    end
  end
end

function Map:update(dt)

end

function Map:draw()

end

return Map