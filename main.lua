local platform = {}
local player = {}

function love.load()
  platform.width = love.graphics.getWidth()
  platform.height = love.graphics.getHeight()

  platform.x = 0
  platform.y = platform.height / 2

  player.x = love.graphics.getWidth() / 2
  player.y = love.graphics.getHeight() / 2

  player.img = love.graphics.newImage('my-little-guy.png')
  player.speed = 200
end

function love.update(dt)
  if love.keyboard.isDown('d') then
    player.x = player.x + (player.speed * dt)
  elseif love.keyboard.isDown('a') then
    player.x = player.x - (player.speed * dt)
  end
end

function love.draw()
  love.graphics.setColor(1, 1, 1)

  love.graphics.rectangle(
    'fill', platform.x, platform.y, platform.width, platform.height
  )

  love.graphics.draw(player.img, player.x, player.y, 0, 1, 1, 0, 32)
end
