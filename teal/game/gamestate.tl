local interface GameState
    step: function(self: self, dt: number, keyStates: {string:boolean}, socketSend: function(string), changeState: function(GameState))
    draw: function(self: self)
    keyUp: function(self: self, key: string)
    keyDown: function(self: self, key: string)
    keyPress: function(self: self, key: string)
    pointerDown: function(self: self)
    pointerUp: function(self: self)
    websocketMessage: function(self: self, message: string, changeState: function(GameState))
    restart: function(self: self, key: boolean)
end

return GameState
