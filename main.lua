function love.load()
    BlockManager = require("block_manager")
    bm = BlockManager()
end

function love.update(dt)
    print("love update")
    bm.update(bm, dt)
end

function love.keypressed(key)
    if key == "space" then
        bm.AddIBlock(bm)
    end
end

function love.draw()
    bm:draw(bm)
end
