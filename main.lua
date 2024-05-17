function love.load()
    Game = require("game")
    GAME = Game()
end

function love.update(dt)
    -- GAME.tetromino = GAME.tetronimo
end

function love.keypressed(key)
    if key == "s" then
        GAME:SpawnTetromino()
    elseif key == "space" then
        GAME.tetromino:rotate()
    elseif key == "right" then
        GAME.tetromino:move(1, 0)
    elseif key == "left" then
        GAME.tetromino:move(-1, 0)
    elseif key == "down" then
        GAME.tetromino:move(0, 1)
    end
end

function love.draw()
    local function draw_block(block)
        love.graphics.setColor(block.color.a, block.color.r, block.color.g, block.color.b)
        love.graphics.rectangle("fill", block.x * 10, block.y * 10, 10, 10)
    end

    for _, block in ipairs(GAME.blocks) do
        draw_block(block)
    end

    for _, block in ipairs(GAME.tetromino.blocks) do
        draw_block(block)
    end
end
