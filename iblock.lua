local Block = require("block")
local Block = Block:extend()

local IBlock = Block:extend()

function IBlock.new(self, type)
    IBlock.super.new(self, type)
end

function IBlock.draw(self)
    love.graphics.setColor(0.16, 0.809, 0.745)
    love.graphics.rectangle("line", self.x, self.y, 10, 10)
    love.graphics.rectangle("line", self.x, self.y + 10, 10, 10)
    love.graphics.rectangle("line", self.x, self.y + 20, 10, 10)
    love.graphics.rectangle("line", self.x, self.y + 30, 10, 10)
end

return IBlock
