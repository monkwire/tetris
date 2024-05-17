local Object = require("classic")
local Tetromino = Object:extend()
local Color = require("color")
local Block = Object:extend()

function Block.new(self, x, y, color)
    self.x = x
    self.y = y
    self.color = color
end

function Tetromino.new(self, type)
    self.center_x = 100
    self.center_y = 100
    self.speed = 100
    self.blocks = {}

    if type == "I" then
        local blue = Color.new(1, 0.78, 0.15, 0.5)
        for i = 1, 4 do
            local block = Block.new(self.x, self.y - 10, blue)
        end
    end
end

function Tetromino.move(self, dx, dy) end

function Tetromino.move_right(self)
    self.x = self.x + 1
end

function Tetromino.move_left(self)
    self.x = self.x - 1
end

return Tetromino
