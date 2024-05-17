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
    print("new tetromino of type", type)
    self.x = 5
    self.y = 5
    self.speed = 100
    self.blocks = {}

    local color
    local deltas

    if type == "I" then
        color = Color.new(1, 0.78, 0.15, 0.5)
        deltas = { { -1, 0 }, { 0, 0 }, { 1, 0 }, { 2, 0 } }
    elseif type == "O" then
        color = Color.new(1, 0.2, 0.9, 0.3)
        deltas = { { -1, 0 }, { 0, 0 }, { -1, 1 }, { 0, 1 } }
    end

    for _, delta in ipairs(deltas) do
        table.insert(self.blocks, M.Block(self.x + delta[1], self.y + delta[2], color))
    end

    return self
end

function M.Tetromino:move(dx, dy)
    for _, block in ipairs(self.blocks) do
        block.x = block.x + dx
        block.y = block.y + dy
    end
end

function M.Tetromino:rotate()
    print("tetronimo rotate")
    for _, block in ipairs(self.blocks) do
        local delta_x = block.x - self.x
        local delta_y = block.y - self.y

        block.x = (self.y + delta_y)
        block.y = (self.x + delta_x)
    end
end

function M.Tetromino:collideswith(blocks) end

return M
