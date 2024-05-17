local Object = require("classic")
local tetromino = require("tetromino")
local Game = Object:extend()

function Game:new()
    self.tetromino = tetromino.Tetromino("O")
    self.blocks = {}
    self.score = 0

    return self
end

function Game:SpawnTetromino()
    self.tetromino = tetromino.Tetromino("I")
end

return Game
