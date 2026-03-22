local EventNotifier = {}

function EventNotifier:Notify(eventName)
    -- Creating the notification GUI
    local notification = Instance.new('ScreenGui')
    local frame = Instance.new('Frame')
    local textLabel = Instance.new('TextLabel')
    
    frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Red Background
    frame.Size = UDim2.new(0, 300, 0, 100) -- Frame size
    frame.Position = UDim2.new(0.5, -150, 0, 0) -- Centered on screen
    frame.Parent = notification
    
    textLabel.Text = eventName
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- White Text
    textLabel.Parent = frame
    
    -- Animation
    frame:TweenPosition(UDim2.new(0.5, -150, 0, 50), 'InOut', 'Sine', 0.5, true)
    wait(3) -- Wait for 3 seconds
    frame:TweenPosition(UDim2.new(0.5, -150, 0, -100), 'InOut', 'Sine', 0.5, true)
    wait(0.5)
    notification:Destroy()
end

function EventNotifier:ActivateRandomEvent()
    -- List of events
    local events = {'Event 1', 'Event 2', 'Event 3', 'Event 4', 'Event 5'}
    local randomEvent = events[math.random(#events)]
    self:Notify(randomEvent)
end

-- Testing the activation of a random event every 10 seconds
while true do
    wait(10)
    EventNotifier:ActivateRandomEvent()
end

return EventNotifier
