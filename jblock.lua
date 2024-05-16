local Block = require("block")
local Block = Block:extend()

local IBlock = Block:extend()

function IBlock.new(self, type)
    IBlock.super.new(self, type)
end

function IBlock.draw(self)
    love.graphics.setColor(1, 255, 255, 255)
    -- love.graphics.setColor(1, 0.78, 0.15, 0.5)
    love.graphics.rectangle("line", self.x, self.y, 10, 20)
    love.graphics.rectangle("line", self.x + 10, self.y + 10, 20, 10)
end

return IBlock
