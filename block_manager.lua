local Object = require("classic")
local IBlock = require("iblock")
local OBlock = require("oblock")
local JBlock = require("jblock")

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

function BlockManager.AddOBlock(self)
    local block = OBlock("o_block")
    table.insert(self.blocks, block)
end

function BlockManager.AddJBlock(self)
    local block = JBlock("j_block")
    table.insert(self.blocks, block)
end

function BlockManager.draw(self)
    for _, v in ipairs(self.blocks) do
        v:draw()
    end
end

return BlockManager
