local Object = require("classic")
local Color = require("color")

M = {}

M.Tetromino = Object:extend()
M.Block = Object:extend()

function M.Block:new(x, y, color)
    self.x = x
    self.y = y
    self.color = color

    return self
end

function M.Tetromino:new(type)
    self.center_x = 5
    self.center_y = 0
    self.speed = 100
    self.blocks = {}

    if type == "I" then
        local blue = Color.new(1, 0.78, 0.15, 0.5)
        for i = 1, 4 do
            local block = M.Block(self.center_x + i, self.center_y, blue)
            table.insert(self.blocks, block)
        end
    end

    return self
end

function M.Tetromino:move(dx, dy) end

function M.Tetromino:collideswith(blocks) end

return M
