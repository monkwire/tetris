local Object = require("classic")
local Block = Object:extend()

function Block.new(self)
    print("block init")

    self.x = 100
    self.y = 100
    self.speed = 100
    self.type = type
    self.falling = true
end

function Block.update(self, dt)
    self.y = self.y + self.speed * dt
end

local IBlock = Block:extend()

function IBlock.new(self, type)
    print("iblock init")
    IBlock.super.new(self, type)
end

function IBlock.draw(self)
    -- love.graphics.rectangle("line", self.x, self.y, 10, 40)
    love.graphics.rectangle("line", 100, 100, 10, 40)
end

return Block
