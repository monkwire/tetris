local Object = require("classic")
local IBlock = require("iblock")

local BlockManager = Object:extend()

function BlockManager.new(self)
    self.blocks = {}
end

function BlockManager.update(self, dt)
    for _, v in ipairs(self.blocks) do
        v.update(v, dt)
    end
end

function BlockManager.AddIBlock(self)
    local block = IBlock("i_block")
    table.insert(self.blocks, block)
end

function BlockManager.draw(self)
    for _, v in ipairs(self.blocks) do
        v:draw()
    end
end

return BlockManager
