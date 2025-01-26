local interface EndState
    step: function(self: self, dt: number, keyStates: {string:boolean}, socketSend: function(string), changeState: function(EndState))
    draw: function(self: self)
    websocketMessage: function(self: self, message: string, changeState: function(EndState))
end

return EndState