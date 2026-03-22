local RandomEventManager = {}

local eventDuration = 200
local intermissionDuration = 30
local currentEvent = nil
local isEventActive = false

local events = {
    {name = "💥 EXPLOTA TODO", func = function() print("💥 ¡EXPLOTA TODO!") end},
    {name = "🚀 GRAVEDAD 0", func = function() game.Workspace.Gravity = 0 wait(eventDuration) game.Workspace.Gravity = 196.2 end},
    {name = "🌧️ LLUVIA DE BLOQUES", func = function() print("🌧️ ¡LLUVIA DE BLOQUES!") end}
}

function RandomEventManager:startGameLoop()
    while true do
        self:activateRandomEvent()
        wait(eventDuration)
        wait(intermissionDuration)
    end
end

function RandomEventManager:activateRandomEvent()
    local randomIndex = math.random(1, #events)
    currentEvent = events[randomIndex]
    isEventActive = true
    print("🎮 EVENTO ACTIVADO: " .. currentEvent.name)
    currentEvent.func()
    isEventActive = false
end

function RandomEventManager:getCurrentEvent()
    return currentEvent
end

function RandomEventManager:isEventActive()
    return isEventActive
end

return RandomEventManager