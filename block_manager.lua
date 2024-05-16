local Object = require("classic")
local Block = require("block")
local IBlock = require("iblock")

local BlockManager = Object:extend()

function BlockManager.new(self)
    self.blocks = {}
    print("bm init")
end

function BlockManager.update(self, dt)
    print("bm update")

    for _, v in ipairs(self.blocks) do
        v:update(dt)
    end
end

function BlockManager.AddIBlock(self)
    print("bm addiblock")
    local block = IBlock("i_block")
    table.insert(self.blocks, block)
end

function BlockManager.draw(self)
    print("bm draw")
    for _, v in ipairs(self.blocks) do
        v:draw()
    end
end

return BlockManager
