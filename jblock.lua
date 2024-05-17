local Block = require("block")
local Block = Block:extend()

local Color = require("color")

local JBlock = Block:extend()

function JBlock.new(self, type)
    JBlock.super.new(self, type)
end

function JBlock.draw(self)
    local blue = Color.new(1, 0.78, 0.15, 0.5)
    love.graphics.setColor(blue["a"], blue["r"], blue["g"], blue["b"])
    love.graphics.rectangle("fill", self.x, self.y, 10, 20)
    love.graphics.rectangle("fill", self.x + 10, self.y + 10, 20, 10)
end

return JBlock
