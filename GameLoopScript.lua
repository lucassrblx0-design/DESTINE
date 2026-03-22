-- Game loop that triggers random events at random intervals during a 200-second round

local totalTime = 200 -- Total round duration in seconds
local elapsedTime = 0 -- Track elapsed time

function randomEvent()
    print("Random event triggered!")
end

while elapsedTime < totalTime do
    -- Generate a random interval between 1 and 10 seconds
    local randomInterval = math.random(1, 10)
    wait(randomInterval)
    randomEvent()
    elapsedTime = elapsedTime + randomInterval
end

print("Round ended after 200 seconds.")