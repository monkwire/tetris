local Block = require("block")
local Block = Block:extend()

local IBlock = Block:extend()

function IBlock.new(self, type)
    print("iblock init")
    IBlock.super.new(self, type)
end

function IBlock.draw(self)
    -- love.graphics.rectangle("line", self.x, self.y, 10, 40)
    love.graphics.rectangle("line", 100, 100, 10, 40)
end

return IBlock
