local type GameState = require("game.gamestate")
local EndBackground = require("game.endbackground")
local Buttons = require("game.buttons")


local record Game
    currentState: GameState -- set EndState?
    buttons: Buttons
    keyStates: {string:boolean}
    socketOpen: boolean
    step: function(dt: number)
    draw: function()
    keyUp: function(key: string)
    keyDown: function(key: string)
    keyPress: function(key: string)
    pointerDown: function()
    pointerUp: function()
end

local record EndScreen is GameState
    background: EndBackground
end

local EndScreenMetatable: metatable<EndScreen> = {
    __index = EndScreen
}

Game.keyStates = {}
Game.socketOpen = false

function Game.init()
    -- Socket.open(subprotocol)
    -- Game.currentState = LoadingState
    Game.buttons = Buttons.new()
end

function Game.onButton(x: number, y: number)
    -- local move = Game.buttons:onClicked(x, y, true)
    -- if (move == 3) then
    --     print("end state click")
    -- end
    -- if (move != 3) then
    --     Game.keyPress("touchRight")
    -- end
end


function EndScreen.new() : EndScreen
    local instance: EndScreen = {}
    setmetatable(instance, EndScreenMetatable)
    instance.background = EndBackground.new()
    return instance -- need scores and players
end


function EndScreen:step(numberOfPlayers: number, keyStates: {string:boolean}, socketSend: function(string), changeState:function(GameState)) 
    -- option to restart game and load new game?
    local newKeyStates = {} -- boolean required
    setmetatable(newKeyStates, {__index = keyStates})
    -- show score
    print("End state")
    -- changeState(startState)
    -- show button here?
end



function EndScreen:draw()
    self.background:draw()
end

return EndScreen

