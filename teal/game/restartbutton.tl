require("shared.init")

local record RestartButton
    canvas: Canvas.SubCanvas
end

local RestartButtonMetatable: metatable<RestartButton> = {
    __index = RestartButton
}

function RestartButton:draw()
    self.canvas.draw(0,0)
end


function RestartButton.new(): RestartButton
    local instance: RestartButton = {}
    setmetatable(instance, RestartButtonMetatable)
    instance.canvas = Canvas.newCanvas(true)
    return instance
end


function RestartButton:onClicked(isEndState?: boolean)
    if (isEndState) then
        print("is End State - restart")
    end
    if (isEndState == false) then
        print("is not End State")
    end
end

return RestartButton