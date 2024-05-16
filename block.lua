local Object = require("classic")
local Block = Object:extend()

function Block.new(self)
    self.x = 100
    self.y = 100
    self.speed = 100
    self.type = type
    self.falling = true
end

function Block.update(self, dt)
    self.y = self.y + self.speed * dt
end

function Block.move_right(self)
    self.x = self.x + 10
end

function Block.move_left(self)
    self.x = self.x - 10
end

return Block
