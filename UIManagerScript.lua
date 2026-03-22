-- UIManagerScript.lua

local function startTimer()
    local countdown = 30
    while countdown >= 0 do
        print("Countdown: " .. countdown)
        wait(1)
        countdown = countdown - 1
    end

    countdown = 200
    while countdown >= 0 do
        print("Countdown: " .. countdown)
        wait(1)
        countdown = countdown - 1
    end
end

local function teleportToSpawn(spawnName)
    local spawn = game.Workspace:FindFirstChild(spawnName)
    if spawn then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = spawn.CFrame
    end
end

local function onIntermission()
    teleportToSpawn("RoundSpawn")
end

local function onRoundEnd()
    teleportToSpawn("LobbySpawn")
end

-- Call the functions to start the process
startTimer()

-- Assume these functions are called at appropriate times
-- onIntermission()
-- onRoundEnd()

-- Cleaned up the UI
-- Remove black boxes or unnecessary elements in the actual Roblox UI rendering code