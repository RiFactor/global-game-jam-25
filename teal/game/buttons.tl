require("shared.init")

local record Buttons
    canvas: Canvas.SubCanvas
end

local ButtonsMetatable: metatable<Buttons> = {
    __index = Buttons
}

function Buttons:draw()
    self.canvas.draw(0, 0)
end

function Buttons.new(): Buttons
    local instance: Buttons = {}
    setmetatable(instance, ButtonsMetatable)
    instance.canvas = Canvas.newCanvas(true)
    return instance
end

function Buttons:onClicked(x: number, y: number): number

    if (x < config.displayWidth /2 ) then -- touch left control
        print("Left button clicked")
        return -1
    
    elseif (x > config.displayWidth /2 ) then -- touch right control
        print("Right button clicked")
        return 1
    end

    return 0
end

function Buttons:onTouch(): number
    return 5
end

return Buttons
