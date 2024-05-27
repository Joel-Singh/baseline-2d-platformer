local platform = {}
local player = {}

function love.load()
  platform.width = love.graphics.getWidth()
  platform.height = love.graphics.getHeight()

  platform.x = 0
  platform.y = platform.height / 2
end

function love.update(dt)
end

function love.draw()
  love.graphics.setColor(1, 1, 1)

  love.graphics.rectangle(
    'fill', platform.x, platform.y, platform.width, platform.height
  )
end
