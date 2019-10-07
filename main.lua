local Map = require 'core/map'
local Tile = require 'core/tile'

function love.load()
  -- First, load the map spritesheet
  tilesheet = love.graphics.newImage('assets/tiny-RPG-forest-files/PNG/environment/tileset.png')
  
  -- Then, get the slices that you need for your map
  floor = love.graphics.newQuad(208, 288, 16, 16, tilesheet:getWidth(), tilesheet:getHeight())
  none = love.graphics.newQuad(158, 176, 16, 16, tilesheet:getWidth(), tilesheet:getHeight())
  wallNW = love.graphics.newQuad(32, 16, 48, 48, tilesheet:getWidth(), tilesheet:getHeight())
  wall = love.graphics.newQuad(96, 16, 16, 48, tilesheet:getWidth(), tilesheet:getHeight())
  -- Arrange the slices into a 2D array to represent your map
  template = {
    {wallNW, none, none, wall},
    {none, none, none, none},
    {none, none, none, none},
    {none, none, none, floor},
  }

  -- Create the map object
  map = Map:new(tilesheet, template, 16)
end

function love.update(dt)
  -- Nothing to update
end

function love.draw()
  -- Draw the map object
  map:draw()
  
end