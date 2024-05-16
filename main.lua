function love.load()
    BlockManager = require("block_manager")
    bm = BlockManager()
end

function love.update(dt)
    bm.update(bm, dt)
end

function love.keypressed(key)
    if key == "space" then
        bm.AddIBlock(bm)
    elseif key == "right" then
        if #bm.blocks then
            bm.blocks[#bm.blocks].move_right(bm.blocks[#bm.blocks])
        end
    elseif key == "left" then
        if #bm.blocks then
            bm.blocks[#bm.blocks].move_left(bm.blocks[#bm.blocks])
        end
    end
end

function love.draw()
    bm:draw(bm)
end
