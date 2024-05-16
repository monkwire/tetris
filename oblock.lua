local Block = require("block")
local Block = Block:extend()

local IBlock = Block:extend()

function IBlock.new(self, type)
    IBlock.super.new(self, type)
end

function IBlock.draw(self)
    love.graphics.rectangle("line", self.x, self.y, 20, 20)
end

return IBlock
