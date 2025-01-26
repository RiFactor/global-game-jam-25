require("shared.init")
require("game.const")

local record EndBackground
    canvas: Canvas.SubCanvas
end

local EndBackgroundMetatable: metatable<EndBackground> = {
    __index = EndBackground
}

function EndBackground:step(dt: number)
end

function EndBackground:draw()
    self.canvas.draw(0,0)
end

function EndBackground.new(): EndBackground
    local instance: EndBackground = {}
    setmetatable(instance, EndBackgroundMetatable)
    instance.canvas = Canvas.newCanvas(false)
    for x=0, (config.displayWidth//TILE_SIZE) do
        for y=0, (config.displayHeight//TILE_SIZE) do
            local tileIndex = math.random(0,3) -- ?
            instance.canvas.drawImage("duck.png", 0, 0, 64, 64, x*64, y*64, 64, 64)
        end -- or different image
    end
    return instance
end

return EndBackground