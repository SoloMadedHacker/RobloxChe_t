    
-- Script By Solo [Jordan] 
-- Not all script by Solo 
-- I'm using Orion Library UI for this
-- Have fun using it player

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SoloMadedHacker/Main/main/Source.lua"))()

function Notif(lol) 
    OrionLib:MakeNotification({
        Name = "SoloCheatPanel",
        Content = lol,
        Image = "rbxassetid://4483345998",
        Time = 8
    })
    wait(8)
end

Notif("Hello there, " .. game.Players.LocalPlayer.Name)
Notif("Please be patient, we are loading the script.")

local Window = OrionLib:MakeWindow({Name = "SoloCheatPanel", HidePremium = false, SaveConfig = true, ConfigFolder = "SoloCheatPanel"})

local Main = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local playerName = game.Players.LocalPlayer.Name

Main:AddLabel("Welcome, " .. playerName .. "! InitiatedCheats:On")

local function sendMessages(playerName)
    print("Hello! " .. playerName)
    wait(2)
    print("Welcome to Orion Library UI Script by Solo (Jordan)")
    wait(4)
    print("Have fun ruining the game :)")
end

Main:AddButton({
    Name = "ConsoleMessages",
    Callback = function()
    OrionLib:MakeNotification({
			Name = "Info",
			Content = "Check console",
			Image = "rbxassetid://4483345998", -- Optional icon
			Time = 5
		})
		
        local playerName = game.Players.LocalPlayer.Name
        sendMessages(playerName)
    end    
})

Main:AddButton({
    Name = "YoutubeChannel",
    Callback = function()
    OrionLib:MakeNotification({
			Name = "Info",
			Content = "Check your clipboard",
			Image = "rbxassetid://4483345998", -- Optional icon
			Time = 5
		})
		
        setclipboard("https://youtube.com/@jordan_games091?si=4FH2peEvp7yzLoeY")
    end    
})

Main:AddButton({
    Name = "WindowsBarSection",
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexsoftworks/DomainX/main/source'),true))() 
    end    
})

local function checkChatSystem()
    local TextChatService = game:GetService("TextChatService")
    
    if TextChatService and TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        OrionLib:MakeNotification({
            Name = "Chat System Status",
            Content = "Game is Currently using new chat system",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    else
        OrionLib:MakeNotification({
            Name = "Chat System Status",
            Content = "Game is currently using old chat system",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
end

Main:AddButton({
    Name = "CheckChat",
    Callback = function()
        checkChatSystem()
    end
})

Main:AddButton({
    Name = "QuickMenu",
    Callback = function()
        -- UI Library Loading (Placeholder for your preferred UI library)
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/mikhailramlal/Rizzer/main/ui"))()

-- Create the QuickHack window
local QuickHack = lib:Window("QuickHack")

-- Variables for High Speed, Antikick, Antiban, and ESP
local HighSpeedEnabled = false
local AntikickEnabled = false
local AntibanEnabled = false
local ESPEnabled = false
local normalWalkSpeed = 16 -- Default Roblox walk speed

-- Function for High Speed
function ToggleHighSpeed(state)
    HighSpeedEnabled = state
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")

    if HighSpeedEnabled then
        humanoid.WalkSpeed = 70 -- Set speed to 70
    else
        humanoid.WalkSpeed = normalWalkSpeed -- Reset to default
    end
end

-- Function for Antikick
function ToggleAntikick(state)
    AntikickEnabled = state

    if AntikickEnabled then
        local mt = getrawmetatable(game)
        local old = mt.__namecall

        setreadonly(mt, false)

        mt.__namecall = newcclosure(function(self, ...)
            local method = getnamecallmethod()
            if method == "Kick" then
                return nil -- Prevents the player from being kicked
            end
            return old(self, ...)
        end)

        setreadonly(mt, true)
    end
end

-- Function for Antiban
function ToggleAntiban(state)
    AntibanEnabled = state

    if AntibanEnabled then
        game.Players.LocalPlayer.OnTeleport:Connect(function(state)
            if state == Enum.TeleportState.Started then
                game:Shutdown() -- Shutdown on teleport initiation to prevent being banned
            end
        end)
    end
end

-- Function for ESP (Shows all players)
function ToggleESP(state)
    ESPEnabled = state
    if ESPEnabled then
        local function CreateESPBox(player)
            local highlight = Instance.new("Highlight")
            highlight.Parent = player.Character
            highlight.FillColor = Color3.fromRGB(255, 255, 255) -- White ESP
            highlight.OutlineColor = Color3.fromRGB(255, 0, 0) -- Red outline
            highlight.FillTransparency = 0.8 -- Slight transparency
            highlight.OutlineTransparency = 0
        end

        -- Apply ESP to all players
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer and player.Character then
                CreateESPBox(player)
            end
        end

        -- Add ESP to new players
        game.Players.PlayerAdded:Connect(function(player)
            player.CharacterAdded:Connect(function(character)
                wait(1) -- Wait for the character to load
                CreateESPBox(player)
            end)
        end)
    else
        -- Disable ESP (Remove ESP from all players)
        for _, player in pairs(game.Players:GetPlayers()) do
            if player.Character and player.Character:FindFirstChildOfClass("Highlight") then
                player.Character:FindFirstChildOfClass("Highlight"):Destroy()
            end
        end
    end
end

-- High Speed Toggle
QuickHack:Toggle("High Speed On/Off", false, function(state)
    ToggleHighSpeed(state)
end)

-- Antikick Toggle
QuickHack:Toggle("Antikick On/Off", false, function(state)
    ToggleAntikick(state)
end)

-- Antiban Toggle
QuickHack:Toggle("Antiban On/Off", false, function(state)
    ToggleAntiban(state)
end)

-- ESP Toggle
QuickHack:Toggle("ESP On/Off", false, function(state)
    ToggleESP(state)
end)

-- Label to indicate creator for QuickHack GUI
QuickHack:Label("Created by Solo")

---------------------
-- Rizz GUI Section
---------------------

-- Rizz Master Lines Loader (160 Creative Rizz Master Lines)
local Rizz_Lines = {
    "Are you made of copper and tellurium? Because you’re Cu-Te.",
    "Do you have a map? I keep getting lost in your eyes.",
    "Even if there wasn't gravity on Earth, I'd still fall for you.",
    "Is your name Google? Because you’ve got everything I’m searching for.",
    "You must be a magician, every time I look at you, everyone else disappears.",
    "Do you believe in love at first sight, or should I walk by again?",
    "Is your name Wi-Fi? Because I'm feeling a connection.",
    "Are you French? Because Eiffel for you.",
    "Do you have a Band-Aid? Because I just scraped my knee falling for you.",
    "I was blinded by your beauty... I’m going to need your name and number for insurance purposes.",
    -- Add 150 more Rizz Master lines here...
    "Girl, are you a campfire? Because you're hot and I want s'more.",
    "Are you a bank loan? Because you have my interest.",
    "If you were a vegetable, you'd be a cute-cumber.",
    "Is your aura made of gold? Because you’re priceless.",
    "Even if you were a keyboard, I'd never delete you."
}

-- Create the Rizz Master GUI window
local Rizz_Main = lib:Window("Rizz Master GUI")

-- Function to send message using TextChatService or ReplicatedStorage
function Chat(message)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
end

-- Rizz Line Picker Dropdown
Rizz_Main:Dropdown("Line Picker", Rizz_Lines, function(line)
    getgenv().line2 = tostring(line)
end, true)

-- Button to send the selected Rizz line
Rizz_Main:Button("Send Rizz Line", function()
    Chat(getgenv().line2)
end)

-- Label to indicate creator for Rizz GUI
Rizz_Main:Label("Created by Solo")

---------------------
-- Roast GUI Section (200 Packgod Roast Lines)
---------------------

-- Packgod Roast Lines Loader (200 Packgod-style Roast Lines)
local Roast_Lines = {
    "Boy you built like a brick with no construction permit.",
    "You look like you use Google Maps just to walk around your own house.",
    "Bro, you couldn’t hit water if you fell out of a boat.",
    "You’re the reason shampoo bottles come with instructions.",
    "If I had a dollar for every brain you don't have, I’d be rich.",
    "Boy, you look like a before picture of every fitness program.",
    "You look like you still play hide and seek by yourself.",
    "You look like you eat soup with a fork.",
    "You get lost in a phone booth with Google Maps.",
    "Bro, you look like the type of guy to ask for directions in your own house.",
    "You built like a half-deflated football.",
    "You probably clap when the plane lands.",
    "Your hairline be playing hide and seek.",
    "You out here looking like a bootleg action figure.",
    "Boy, you got hit by the ugly stick twice.",
    "Your face look like it's been buffering for 10 years.",
    "You built like a deep-fried meme.",
    "Your style be stuck in 2012 with no updates.",
    "You look like you still take your mom to parent-teacher conferences.",
    "Boy, you wear Velcro shoes so you don't trip over your own laces.",
    -- Add 180 more Packgod roast lines here...
    "You built like a bag of unseasoned popcorn.",
    "You look like you use your phone as a mirror.",
    "Boy, you probably run out of breath chewing gum.",
    "You look like you call tech support to open a PDF.",
    "You so dumb you thought a quarterback was a refund.",
    "You built like a used punching bag.",
    "Your haircut look like it was drawn with an Etch-A-Sketch.",
    "Your internet probably got a lag switch just like your brain.",
    "You the type to bring a spoon to a knife fight.",
    "You look like you skip leg day to play Minecraft."
}

-- Create the Roast GUI window
local Roast_Main = lib:Window("Roast GUI")

-- Roast Line Picker Dropdown
Roast_Main:Dropdown("Roast Picker", Roast_Lines, function(roastLine)
    getgenv().line3 = tostring(roastLine)
end, true)

-- Button to send the selected Roast line
Roast_Main:Button("Send Roast Line", function()
    Chat(getgenv().line3)
end)

-- Label to indicate creator for Roast GUI
Roast_Main:Label("Created by Solo")
    end
})

Main:AddButton({
	Name = "RunNetless",
	Callback = function()
	OrionLib:MakeNotification({
			Name = "Info",
			Content = "Check console",
			Image = "rbxassetid://4483345998", -- Optional icon
			Time = 5
		})

		print("Installing Netless...")
		wait(5)
		warn("This won't work for some animations.")
		wait(2)
		print("Loading...")
		wait(3)
		print("Netless successfully running. By Solo.")

		-- Load the additional script here
		local LocalPlayer = game:GetService("Players").LocalPlayer
		local Heartbeat = game:GetService("RunService").Heartbeat

		Heartbeat:Connect(function()
			LocalPlayer.MaximumSimulationRadius = math.huge
			sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
		end)

		wait(0.2)

		for i, v in next, LocalPlayer.Character:GetDescendants() do
			if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then 
				game:GetService("RunService").Heartbeat:Connect(function()
					v.Velocity = Vector3.new(-30, 0, 0)
				end)
			end
		end

		wait(0.2)

		local character = LocalPlayer.Character
		local tools = {}
		for i, v in pairs(LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then 
				v.Parent = character
				table.insert(tools, v)
			end
		end

		wait()
		for i, v in pairs(tools) do
			v.Parent = LocalPlayer.Backpack
		end

		wait(0.1)

		game:GetService("StarterGui"):SetCore("SendNotification", { 
			Title = "Message";
			Text = "Netless Running. By Solo";
			Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"
		})
	end
})

Main:AddButton({
    Name = "StatsGUI",
    Callback = function()
        -- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Function to create a uniform GUI background for all elements
local function createGuiBackground(parent, position, size)
    local frame = Instance.new("Frame")
    frame.Size = size
    frame.Position = position
    frame.BackgroundColor3 = Color3.new(0, 0, 0) -- Black background
    frame.BackgroundTransparency = 0.3 -- Slight transparency
    frame.BorderSizePixel = 1
    frame.BorderColor3 = Color3.new(1, 1, 1) -- White border for visibility
    frame.Parent = parent
    return frame
end

-- Create the frame for FPS and Ping
local statsFrame = createGuiBackground(screenGui, UDim2.new(0, 10, 0, 10), UDim2.new(0, 140, 0, 60))

-- Create FPS label
local fpsLabel = Instance.new("TextLabel")
fpsLabel.Size = UDim2.new(1, 0, 0.5, 0)
fpsLabel.Position = UDim2.new(0, 0, 0, 0)
fpsLabel.Text = "FPS: 0"
fpsLabel.TextColor3 = Color3.new(1, 1, 1)
fpsLabel.BackgroundTransparency = 1
fpsLabel.TextScaled = true
fpsLabel.Parent = statsFrame

-- Create Ping label
local pingLabel = Instance.new("TextLabel")
pingLabel.Size = UDim2.new(1, 0, 0.5, 0)
pingLabel.Position = UDim2.new(0, 0, 0.5, 0)
pingLabel.Text = "Ping: 0 ms"
pingLabel.TextColor3 = Color3.new(1, 1, 1)
pingLabel.BackgroundTransparency = 1
pingLabel.TextScaled = true
pingLabel.Parent = statsFrame

-- Variables to track FPS
local lastUpdateTime = tick()
local frameCount = 0

-- Function to update FPS
local function updateFPS()
    local currentTime = tick()
    frameCount = frameCount + 1

    if currentTime - lastUpdateTime >= 1 then
        fpsLabel.Text = string.format("FPS: %d", frameCount)
        lastUpdateTime = currentTime
        frameCount = 0
    end
end

-- Connect to RunService Heartbeat to update FPS
game:GetService("RunService").Heartbeat:Connect(updateFPS)

-- Update Ping using Roblox API
local function updatePing()
    local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    pingLabel.Text = string.format("Ping: %s", ping)
end

-- Update Ping every frame
game:GetService("RunService").RenderStepped:Connect(function()
    updatePing()
end)

-- Create the frame for PlayerHealth at the bottom right corner
local healthFrame = createGuiBackground(screenGui, UDim2.new(1, -150, 1, -40), UDim2.new(0, 140, 0, 30))

-- Create PlayerHealth label
local healthLabel = Instance.new("TextLabel")
healthLabel.Size = UDim2.new(1, 0, 1, 0)
healthLabel.Position = UDim2.new(0, 0, 0, 0)
healthLabel.Text = "PlayerHealth: 100"
healthLabel.TextColor3 = Color3.new(1, 1, 1)
healthLabel.BackgroundTransparency = 1
healthLabel.TextScaled = true
healthLabel.Parent = healthFrame

-- Update PlayerHealth
local function updatePlayerHealth()
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        local humanoid = player.Character.Humanoid
        healthLabel.Text = string.format("PlayerHealth: %.0f", humanoid.Health)

        humanoid.Died:Connect(function()
            healthLabel.Text = "PlayerHealth: 0"
        end)
    end
end

local function setupCharacter()
    updatePlayerHealth()
end

-- Call setupCharacter when character is added or respawned
game.Players.LocalPlayer.CharacterAdded:Connect(setupCharacter)
setupCharacter()

-- Create the frame for PlayerCount
local playerCountFrame = createGuiBackground(screenGui, UDim2.new(0, 10, 1, -80), UDim2.new(0, 140, 0, 30))

-- Create PlayerCount label
local playerCountLabel = Instance.new("TextLabel")
playerCountLabel.Size = UDim2.new(1, 0, 1, 0)
playerCountLabel.Position = UDim2.new(0, 0, 0, 0)
playerCountLabel.Text = "0/0 Players"
playerCountLabel.TextColor3 = Color3.new(1, 1, 1)
playerCountLabel.BackgroundTransparency = 1
playerCountLabel.TextScaled = true
playerCountLabel.Parent = playerCountFrame

-- Update PlayerCount
local function updatePlayerCount()
    local playerCount = #game.Players:GetPlayers()
    local maxPlayers = game:GetService("Players").MaxPlayers
    playerCountLabel.Text = string.format("%d/%d Players", playerCount, maxPlayers)
end

game.Players.PlayerAdded:Connect(updatePlayerCount)
game.Players.PlayerRemoving:Connect(updatePlayerCount)
updatePlayerCount()

-- Create the frame for Coordinates and Speed in the top right corner
local coordSpeedFrame = createGuiBackground(screenGui, UDim2.new(1, -150, 0, 10), UDim2.new(0, 140, 0, 60))

-- Create Coordinates label
local coordsLabel = Instance.new("TextLabel")
coordsLabel.Size = UDim2.new(1, 0, 0.5, 0)
coordsLabel.Position = UDim2.new(0, 0, 0, 0)
coordsLabel.Text = "Coordinates: (0, 0, 0)"
coordsLabel.TextColor3 = Color3.new(1, 1, 1)
coordsLabel.BackgroundTransparency = 1
coordsLabel.TextScaled = true
coordsLabel.Parent = coordSpeedFrame

-- Create Speed label
local speedLabel = Instance.new("TextLabel")
speedLabel.Size = UDim2.new(1, 0, 0.5, 0)
speedLabel.Position = UDim2.new(0, 0, 0.5, 0)
speedLabel.Text = "Speed: 0"
speedLabel.TextColor3 = Color3.new(1, 1, 1)
speedLabel.BackgroundTransparency = 1
speedLabel.TextScaled = true
speedLabel.Parent = coordSpeedFrame

-- Update Coordinates and Speed
local function updateCoordinatesAndSpeed()
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = player.Character.HumanoidRootPart
        local position = humanoidRootPart.Position
        coordsLabel.Text = string.format("Coordinates: (%.2f, %.2f, %.2f)", position.X, position.Y, position.Z)

        -- Update Speed
        local speed = humanoidRootPart.Velocity.Magnitude
        speedLabel.Text = string.format("Speed: %.2f", speed)
    end
end

-- Update Coordinates and Speed on Heartbeat
game:GetService("RunService").Heartbeat:Connect(updateCoordinatesAndSpeed)

-- Create the frame for Time and Game Information
local timeGameFrame = createGuiBackground(screenGui, UDim2.new(0.5, -70, 0, 10), UDim2.new(0, 140, 0, 30))

-- Create Time label
local timeLabel = Instance.new("TextLabel")
timeLabel.Size = UDim2.new(1, 0, 0.5, 0)
timeLabel.Position = UDim2.new(0, 0, 0, 0)
timeLabel.Text = "Time: 0:00"
timeLabel.TextColor3 = Color3.new(1, 1, 1)
timeLabel.BackgroundTransparency = 1
timeLabel.TextScaled = true
timeLabel.Parent = timeGameFrame

-- Create Game Name label
local gameLabel = Instance.new("TextLabel")
gameLabel.Size = UDim2.new(1, 0, 0.5, 0)
gameLabel.Position = UDim2.new(0, 0, 0.5, 0)
gameLabel.Text = "Game: " .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
gameLabel.TextColor3 = Color3.new(1, 1, 1)
gameLabel.BackgroundTransparency = 1
gameLabel.TextScaled = true
gameLabel.Parent = timeGameFrame

-- Update Time
local function updateTime()
    local currentTime = os.date("*t")
    timeLabel.Text = string.format("Time: %02d:%02d", currentTime.hour, currentTime.min)
end

-- Update Time every minute
while true do
    updateTime()
    wait(60) -- Update every minute
end
    end
})

Main:AddButton({
    Name = "PanelGUI",
    Callback = function()
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Size = UDim2.new(0, 25, 0, 25)
Frame.Position = UDim2.new(0.5, -12.5, 0, 0)
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

TextLabel.Text = "J"
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Parent = Frame
    end
})

Main:AddButton({
	Name = "GUISelfDestruct",
	Callback = function()
        OrionLib:Destroy();
  	end    
})

Main:AddButton({
    Name = "Fates ESP",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/fatesc/fates-esp/main/main.lua'))()
    end
})

local Info = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local player = game.Players.LocalPlayer
local playerName = player.Name

local function getDeviceType()
	local userInputService = game:GetService("UserInputService")
	if userInputService.TouchEnabled and not userInputService.MouseEnabled then
		return "Mobile"
	elseif userInputService.TouchEnabled and userInputService.MouseEnabled then
		return "Tablet"
	elseif userInputService.KeyboardEnabled then
		return "PC"
	elseif userInputService.GamepadEnabled then
		return "Console"
	else
		return "Unknown"
	end
end

local PlayerLabel = Info:AddLabel("Player: " .. playerName)
local DeviceLabel = Info:AddLabel("Device: " .. getDeviceType())
local TimeLabel = Info:AddLabel("Loading Time...")
local DateLabel = Info:AddLabel("Loading Date...")

local function getDaySuffix(day)
	if day % 10 == 1 and day ~= 11 then
		return "st"
	elseif day % 10 == 2 and day ~= 12 then
		return "nd"
	elseif day % 10 == 3 and day ~= 13 then
		return "rd"
	else
		return "th"
	end
end

local function updateTime()
	while true do
		local timeNow = os.date("*t")
		local hours = string.format("%02d", timeNow.hour)
		local minutes = string.format("%02d", timeNow.min)
		local seconds = string.format("%02d", timeNow.sec)
		local formattedTime = hours .. ":" .. minutes .. ":" .. seconds
		TimeLabel:Set(formattedTime)
		wait(1)
	end
end

local function updateDate()
	while true do
		local dateNow = os.date("*t")
		local day = dateNow.day
		local month = os.date("%B")
		local weekday = os.date("%A")
		local year = dateNow.year
		local daySuffix = getDaySuffix(day)
		local formattedDate = day .. daySuffix .. " " .. month .. ", " .. weekday .. " " .. year
		DateLabel:Set(formattedDate)
		wait(1)
	end
end

spawn(updateTime)
spawn(updateDate)

local TimerLabel
local timerRunning = false
local paused = false
local currentTime = 0
local timerConnection

local function formatTime(timeInSeconds)
	local hours = math.floor(timeInSeconds / 3600)
	local minutes = math.floor((timeInSeconds % 3600) / 60)
	local seconds = timeInSeconds % 60
	return string.format("%02d:%02d:%02d", hours, minutes, seconds)
end

local function updateTimer()
	TimerLabel:Set(formatTime(currentTime))
end

TimerLabel = Info:AddLabel("00:00:00")

Info:AddButton({
	Name = "StartTimer",
	Callback = function()
		if not timerRunning then
			timerRunning = true
			timerConnection = game:GetService("RunService").Stepped:Connect(function(_, deltaTime)
				if not paused then
					currentTime = currentTime + deltaTime
					if currentTime >= 86400 then
						currentTime = currentTime + 1
					end
					updateTimer()
				end
			end)
		end
	end
})

Info:AddButton({
	Name = "StopTimer",
	Callback = function()
		if timerRunning then
			if timerConnection then timerConnection:Disconnect() end
			timerRunning = false
			OrionLib:MakeNotification({
				Name = "Timer Stopped",
				Content = "Time: " .. formatTime(currentTime),
				Image = "rbxassetid://4483345998",
				Time = 5
			})
		end
	end
})

Info:AddButton({
	Name = "RestartTimer",
	Callback = function()
		if timerRunning then
			if timerConnection then timerConnection:Disconnect() end
			timerRunning = false
		end
		currentTime = 0
		paused = false
		updateTimer()
	end
})

Info:AddButton({
	Name = "PauseTimer",
	Callback = function()
		if timerRunning and not paused then
			paused = true
		end
	end
})

Info:AddButton({
	Name = "ContinueTimer",
	Callback = function()
		if timerRunning and paused then
			paused = false
		end
	end
})

-- Helper function to get the ordinal suffix (st, nd, rd, th)
local function getOrdinalSuffix(day)
    if day == 1 or day == 21 or day == 31 then
        return "st"
    elseif day == 2 or day == 22 then
        return "nd"
    elseif day == 3 or day == 23 then
        return "rd"
    else
        return "th"
    end
end

-- Function to get the formatted date string (example: 6th October, Sunday 2024)
local function getFormattedDate(dayOffset)
    local targetDate = os.time() + (dayOffset * 24 * 60 * 60) -- Adjust by dayOffset (1 for tomorrow, -1 for yesterday)
    local day = tonumber(os.date("%d", targetDate)) -- Get day as a number
    local month = os.date("%B", targetDate) -- Get the full month name
    local year = os.date("%Y", targetDate) -- Get the year
    local weekday = os.date("%A", targetDate) -- Get the weekday name

    -- Return formatted string with ordinal suffix
    return string.format("%d%s %s, %s %d", day, getOrdinalSuffix(day), month, weekday, year)
end

-- Add labels for "Tomorrow" and "Yesterday"
Info:AddLabel("Tomorrow: " .. getFormattedDate(1)) -- 1 day in the future
Info:AddLabel("Yesterday: " .. getFormattedDate(-1)) -- 1 day in the past

local function checkDeviceType()
    local userInputService = game:GetService("UserInputService")
    local guiService = game:GetService("GuiService")

    if userInputService.KeyboardEnabled and userInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
        return "Windows (PC)"
    end

    if userInputService.TouchEnabled then
        if guiService:IsTenFootInterface() == false then
            return "Android"
        end
        return "iOS"
    end

    return "Not Sure"
end

local InfoLabel = Info:AddLabel("System: " .. checkDeviceType())

local FPSLabel = Info:AddLabel("FPS: 0")
local PingLabel = Info:AddLabel("Ping: 0 ms")

spawn(function()
	while true do
		local fps = math.floor(1 / game:GetService("RunService").RenderStepped:Wait())
		FPSLabel:Set("FPS: " .. fps)
		
		local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
		PingLabel:Set("Ping: " .. ping .. " ")
		
		wait(1)
	end
end)

Info:AddButton({
	Name = "CopyCoordinates",
	Callback = function()
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		
		local function copyCoordinates()
			local character = player.Character or player.CharacterAdded:Wait()
			local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
			local position = humanoidRootPart.Position
			local formattedCoordinates = string.format("%.2f, %.2f, %.2f", position.X, position.Y, position.Z)
			setclipboard(formattedCoordinates)
		end
		
		copyCoordinates()
	end
})

Info:AddButton({
	Name = "CopyGameID",
	Callback = function()
		setclipboard(tostring(game.PlaceId))
		OrionLib:MakeNotification({
			Name = "Copied",
			Content = "Game ID has been copied to clipboard!",
			Image = "rbxassetid://4483345998",
			Time = 3
		})
	end    
})

-- Function to determine the current season
local function getSeason()
    local month = os.date("*t").month
    if month == 12 or month == 1 or month == 2 then
        return "Winter"
    elseif month >= 3 and month <= 5 then
        return "Spring"
    elseif month >= 6 and month <= 8 then
        return "Summer"
    else
        return "Fall"
    end
end

-- Function to get the current event based on the date
local function getEvent()
    local month = os.date("*t").month
    local day = os.date("*t").day

    if month == 1 and day == 1 then
        return "New Year's Day"
    elseif month == 2 and day == 14 then
        return "Valentine's Day"
    elseif month == 3 and day == 17 then
        return "St. Patrick's Day"
    elseif month == 4 and day == 1 then
        return "April Fool's Day"
    elseif month == 5 and day == 31 then
        return "Memorial Day"
    elseif month == 7 and day == 4 then
        return "Independence Day"
    elseif month == 8 and day == 31 then
        return "Malaysia National Day (Merdeka Day)"
    elseif month == 10 and day >= 20 and day <= 24 then
        return "Deepavali (Diwali)"
    elseif month == 10 and day == 31 then
        return "Halloween"
    elseif month == 11 and day == 11 then
        return "Veterans Day"
    elseif month == 11 and day == 26 then
        return "Thanksgiving"
    elseif month == 12 and day == 25 then
        return "Christmas"
    elseif month == 12 and day == 31 then
        return "New Year's Eve"
    else
        return "None"
    end
end

-- Add labels for the current season and event
Info:AddLabel("Season: " .. getSeason())
Info:AddLabel("Event: " .. getEvent())



local Calculator = Window:MakeTab({
    Name = "Calculator",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local label

local function calculate(input)
    -- Replace × and X with * for multiplication
    input = string.gsub(input, "×", "*")
    input = string.gsub(input, "X", "*")
    
    local success, result = pcall(function()
        if string.find(input, "/") or string.find(input, "÷") then
            -- Extract numbers and check for division by zero
            local _, _, num1, num2 = string.find(input, "(%d+)%s*[/÷]%s*(%d+)")
            num1, num2 = tonumber(num1), tonumber(num2)
            if num2 == 0 then
                return "Can't divide with 0"
            else
                return num1 / num2
            end
        else
            -- Perform addition, subtraction, or multiplication
            return loadstring("return "..input)()
        end
    end)

    if success then
        return result
    else
        return "Typed wrong, try again"
    end
end

Calculator:AddTextbox({
    Name = "Enter Equation",
    Default = "",
    TextDisappear = true,
    Callback = function(value)
        local result = calculate(value)
        label:Set("SoloCalculator: " .. tostring(result))
    end
})

label = Calculator:AddLabel("SoloCalculator: Hello")

local Client = Window:MakeTab({
    Name = "Client",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Client:AddButton({
    Name = "PrintSentenceConsole",
    Callback = function()
        print("Hello local World!")
    end
})

-- Print Textbox
Client:AddTextbox({
    Name = "Print Message",
    Default = "",
    TextDisappear = true,
    Callback = function(text)
        print(text)
    end
})

-- Warn Textbox
Client:AddTextbox({
    Name = "Warn Message",
    Default = "",
    TextDisappear = true,
    Callback = function(text)
        warn(text)
    end
})

-- Error Textbox
Client:AddTextbox({
    Name = "Error Message",
    Default = "",
    TextDisappear = true,
    Callback = function(text)
        error(text)
    end
})

-- Console Message Buttons
Client:AddButton({
    Name = "Stringline Error",
    Callback = function()
        print("Stringline Error: Device is hacked. Warning: Roblox can't handle Malware.exe.")
    end
})

Client:AddButton({
    Name = "HttpService Success",
    Callback = function()
        print("HttpService: Successfully made a GET request.")
    end
})

Client:AddButton({
    Name = "HD Admin Topbar Installed",
    Callback = function()
        print("HD Admin: Topbar installed successfully.")
    end
})

Client:AddButton({
    Name = "Welcome to HD Admin",
    Callback = function()
        print("HD Admin: Welcome to the HD Admin panel!")
    end
})

Client:AddButton({
    Name = "HD Admin Version Update",
    Callback = function()
        print("HD Admin: Version 5.0 is now live with new features.")
    end
})

Client:AddButton({
    Name = "Admin Privileges",
    Callback = function()
        print("HD Admin: You have admin privileges.")
    end
})

Client:AddButton({
    Name = "HD Admin Commands",
    Callback = function()
        print("HD Admin: Type !help for a list of commands.")
    end
})

-- New Buttons for JSON Decode URL Error and Stringline Hacked
Client:AddButton({
    Name = "JSON Decode URL Error",
    Callback = function()
        print("JSON Decode Error: Failed to decode URL response.")
    end
})

Client:AddButton({
    Name = "Stringline Hacked",
    Callback = function()
        local randomNumbers = math.random(10000, 99999) -- Generates a random number between 10000 and 99999
        print("Stringline Hacked: Stringline" .. randomNumbers)
    end
})

-- Virus Messages Toggle
local virusMessagesEnabled = false
local virusMessagesList = {
    "GET FREE ROBUX HERE!!! Robuxfree.com",
    "SOLO HACKED YO DEVICE!!!!!! 01010101010",
    "Free love here: 👉 freelovevpn.com 👈",
    "You won a FREE iPhone! Click here: 👉 freeiphones.com 👈",
    "Hurry up! Only 10 spots left for FREE membership: 👉 freemembership.com 👈",
    "Claim your prize NOW! 👉 scamprizes.com 👈",
    "Unbelievable deals on ROBUX! 👉 robuxdeals.com 👈",
    "Your account has been compromised! 👉 fixyouraccount.com 👈",
    "Special offer just for you! 👉 scamoffer.com 👈",
    "YO DEVICE IS HACKED PLEASE ENTER THIS URL TO FIX IT 👉 GETYODEVICEFIXED.COM",
    "ROBLOX IS HANDING FREE MONEY ENTER YOUR PASS IN THIS URL 👉 ROBLOXGETTERIP.COM",
    "Congratulations! You've been selected for a cash prize! 👉 scamcash.com 👈",
    "Exclusive offer: Get unlimited Robux! 👉 robux-unlimited.com 👈",
    "Click now to fix your hacked account! 👉 fixmyaccountnow.com 👈",
    "You have a message from Roblox: Please verify your account 👉 robloxverify.com 👈",
    "Amazing deals on premium memberships! 👉 premiumdeal.com 👈",
    "WARNING: Your device may be compromised! Click here to fix: 👉 malwarefix.com 👈",
    "Free n*dew here 18+ Only!!! 👉 TalkieLove.com 👈",
    "Click here to claim your prize: 👉 scamlink.com 👈",
    "Don't miss out on this exclusive offer! 👉 getrichquick.com 👈",
    "You've won a free vacation! 👉 vacationprize.com 👈",
    "Your device has been hacked! Click to fix: 👉 devicefixer.com 👈",
    "Your password has been leaked! 👉 recoverpass.com 👈",
    "Get paid for taking surveys! 👉 easycash.com 👈",
    "Act fast! Limited time offer! 👉 hurryup.com 👈",
}

-- Function to send random virus messages
local function sendVirusMessages()
    while virusMessagesEnabled do
        wait(1) -- Adjust the wait time as needed for the spam speed
        local randomIndex = math.random(1, #virusMessagesList)
        print(virusMessagesList[randomIndex])
    end
end

-- Add Toggle for Virus Messages
Client:AddToggle({
    Name = "VirusMessages",
    Default = false,
    Callback = function(value)
        virusMessagesEnabled = value
        if virusMessagesEnabled then
            sendVirusMessages()
        end
    end
})
-- Create the Prototype tab
local Prototype = Window:MakeTab({
    Name = "Prototype",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Add a textbox to the Prototype tab
Prototype:AddTextbox({
    Name = "Kick",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        -- When the player types something and presses Enter, they will be kicked with a custom message
        local message = "You were kicked for: " .. Value
        game.Players.LocalPlayer:Kick(message)
    end
})

-- Add buttons for different Roblox error messages
Prototype:AddButton({
    Name = "Client initiated disconnect",
    Callback = function()
        game.Players.LocalPlayer:Kick("Client initiated disconnect")
    end
})

Prototype:AddButton({
    Name = "Disconnected due to inactivity",
    Callback = function()
        game.Players.LocalPlayer:Kick("Disconnected due to inactivity")
    end
})

Prototype:AddButton({
    Name = "Lost connection to the game server",
    Callback = function()
        game.Players.LocalPlayer:Kick("Lost connection to the game server, please reconnect.")
    end
})

Prototype:AddButton({
    Name = "You have been banned",
    Callback = function()
        game.Players.LocalPlayer:Kick("You have been banned from this game.")
    end
})

Prototype:AddButton({
    Name = "Server shutdown",
    Callback = function()
        game.Players.LocalPlayer:Kick("This server has shut down. Please reconnect.")
    end
})

Prototype:AddButton({
    Name = "You were kicked from the game",
    Callback = function()
        game.Players.LocalPlayer:Kick("You were kicked from the game.")
    end
})

-- Add more buttons for common error messages

Prototype:AddButton({
    Name = "Network Connection Attempt Failed (ID=17)",
    Callback = function()
        game.Players.LocalPlayer:Kick("ID=17 Connection attempt failed.")
    end
})

Prototype:AddButton({
    Name = "Lost Connection Due to Error Code: 277",
    Callback = function()
        game.Players.LocalPlayer:Kick("Lost connection to the game (Error Code: 277). Please check your internet connection.")
    end
})

Prototype:AddButton({
    Name = "Error Code: 267 - Kicked by Script",
    Callback = function()
        game.Players.LocalPlayer:Kick("You were kicked from this game (Error Code: 267) - Kicked by script.")
    end
})

Prototype:AddButton({
    Name = "Error Code: 279 - Failed to Connect",
    Callback = function()
        game.Players.LocalPlayer:Kick("Failed to connect to the Game. (ID=17, Error Code: 279)")
    end
})

-- Add more Roblox error messages:

Prototype:AddButton({
    Name = "Error Code: 260 - Lost Connection to Server",
    Callback = function()
        game.Players.LocalPlayer:Kick("Lost connection to the server. (Error Code: 260)")
    end
})

Prototype:AddButton({
    Name = "Error Code: 262 - Client Timed Out",
    Callback = function()
        game.Players.LocalPlayer:Kick("The client has timed out. (Error Code: 262)")
    end
})

Prototype:AddButton({
    Name = "Error Code: 271 - Server Full",
    Callback = function()
        game.Players.LocalPlayer:Kick("You have been kicked due to the server being full. (Error Code: 271)")
    end
})

Prototype:AddButton({
    Name = "Error Code: 773 - Teleport Failure",
    Callback = function()
        game.Players.LocalPlayer:Kick("Teleport failed. (Error Code: 773)")
    end
})

Prototype:AddButton({
    Name = "Error Code: 517 - Disconnected from the Game",
    Callback = function()
        game.Players.LocalPlayer:Kick("This game has shut down. (Error Code: 517)")
    end
})

Prototype:AddButton({
    Name = "Error Code: 529 - Roblox Maintenance",
    Callback = function()
        game.Players.LocalPlayer:Kick("We are experiencing technical difficulties. (Error Code: 529)")
    end
})

Prototype:AddButton({
    Name = "Error Code: 802 - Roblox Server Crash",
    Callback = function()
        game.Players.LocalPlayer:Kick("Roblox has crashed. (Error Code: 802)")
    end
})

-- Add more custom error messages

Prototype:AddButton({
    Name = "The server is currently busy",
    Callback = function()
        game.Players.LocalPlayer:Kick("The server is currently busy. Please try again.")
    end
})

Prototype:AddButton({
    Name = "Roblox servers are down",
    Callback = function()
        game.Players.LocalPlayer:Kick("Roblox servers are currently down. Please try again later.")
    end
})

Prototype:AddButton({
    Name = "Account has been logged in elsewhere",
    Callback = function()
        game.Players.LocalPlayer:Kick("This account has been logged in from another location.")
    end
})

Prototype:AddButton({
    Name = "The game is no longer available",
    Callback = function()
        game.Players.LocalPlayer:Kick("The game is no longer available. Please check back later.")
    end
})

Prototype:AddButton({
    Name = "You do not have permission to join this game",
    Callback = function()
        game.Players.LocalPlayer:Kick("You do not have permission to join this game.")
    end
})

local Player = Window:MakeTab({
    Name = "Player",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Player:AddSlider({
    Name = "Speed",
    Min = 0,
    Max = 500,
    Default = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Speed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end    
})

Player:AddSlider({
    Name = "Jump Power",
    Min = 0,
    Max = 500,
    Default = game.Players.LocalPlayer.Character.Humanoid.JumpPower,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Jump Power",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end    
})

Player:AddButton({
    Name = "Sit",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.Sit = true
        end
    end
})

Player:AddButton({
    Name = "Shiftlock",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Permanent-Shiftlock-V2-14049"))()
    end
})

Player:AddButton({
    Name = "Calendar",
    Callback = function()
        local currentDateTime = os.date("*t")  -- Get the current date and time
        local dayOfWeek = os.date("%A")  -- Get the day of the week
        local day = currentDateTime.day
        local month = os.date("%B")  -- Get the full month name
        local year = currentDateTime.year
        local hour = currentDateTime.hour
        local minute = currentDateTime.min
        local period = hour >= 12 and "PM" or "AM"  -- Determine AM or PM

        -- Format hour in 12-hour format
        hour = hour % 12
        if hour == 0 then
            hour = 12
        end

        local dateTimeString = string.format("%s, %d%s %s %d | Time: %02d:%02d %s", 
            dayOfWeek, 
            day, 
            (day % 10 == 1 and day ~= 11) and "st" or 
            (day % 10 == 2 and day ~= 12) and "nd" or 
            (day % 10 == 3 and day ~= 13) and "rd" or "th", 
            month, 
            year, 
            hour, 
            minute, 
            period)

        print(dateTimeString)  -- Print the date and time in the console
        OrionLib:MakeNotification({
            Name = "Today:",
            Content = dateTimeString,
            Duration = 5
        })
        
        OrionLib:MakeNotification({
			Name = "Creator",
			Content = "By Solo",
			Image = "rbxassetid://4483345998", -- Optional icon
			Time = 5
		})
    end
})

local function capitalizeFirstLetter(str)
    return str:gsub("(%a)(%w*)", function(firstLetter, rest)
        return firstLetter:upper() .. rest:lower()
    end)
end

Player:AddButton({
    Name = "GetMyInfo",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Info",
            Content = "Check Console",
            Time = 2, -- Time in seconds for how long the notification stays on screen
        })
        
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")

        local accountAge = player.AccountAge or 0
        local years = math.floor(accountAge / 365)
        local days = accountAge % 365
        local accountAgeString = string.format("%d Year(s) And %d Day(s)", years, days)

        local joinDate = os.date("%d-%m-%Y", os.time() - (accountAge * 24 * 3600))

        local playerName = player.Name or "Unknown"
        local playerId = player.UserId or "Unknown"
        local playerHealth = humanoid.Health or 0

        local fps = math.floor(1 / game:GetService("RunService").RenderStepped:Wait())
        local stats = game:GetService("Stats")
        local ping = math.floor(stats.Network.ServerStatsItem["Data Ping"]:GetValue())

        local todayDate = os.date("%d %B, %A %I:%M %p %Y")

        local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name or "Unknown Game"
        local gameId = game.PlaceId or "Unknown ID"

        local userInputService = game:GetService("UserInputService")
        local deviceType
        if userInputService.TouchEnabled and not userInputService.KeyboardEnabled then
            deviceType = "Mobile"
        elseif userInputService.TouchEnabled and userInputService.KeyboardEnabled then
            deviceType = "Tablet"
        elseif userInputService.GamepadEnabled then
            deviceType = "Console"
        else
            deviceType = "PC"
        end

        local httpService = game:GetService("HttpService")
        local locationData = httpService:JSONDecode(game:HttpGet("http://ip-api.com/json/"))

        print("Info Data: ")
        for key, value in pairs(locationData) do
            print(capitalizeFirstLetter(key) .. ": " .. tostring(value))
        end

        local ipAddress = locationData.query
        local postal = locationData.zip or "Unknown"
        local countryCode = locationData.countryCode
        local countryData = httpService:JSONDecode(game:HttpGet("https://restcountries.com/v3.1/all"))
        local capitalOfCountry

        for _, countryInfo in pairs(countryData) do
            if countryInfo.cca2 == countryCode then
                capitalOfCountry = countryInfo.capital and countryInfo.capital[1] or "Unknown"
                break
            end
        end
        
        local latitude = locationData.lat or 0
        local longitude = locationData.lon or 0

        local north = latitude > 0 and latitude or -latitude
        local south = latitude < 0 and -latitude or latitude
        local east = longitude > 0 and longitude or -longitude
        local west = longitude < 0 and -longitude or longitude
        
        local serverCode = game.JobId or "Unknown"
        
        print("| User: " .. capitalizeFirstLetter(playerName) .. " | ID: " .. tostring(playerId) .. " | Country: (Logged)")
        print("| IP Address: (Logged) | Account Age: " .. accountAgeString .. " | Joined: " .. joinDate .. " | Place: (Logged)")
        print("| PlayerHealth: " .. playerHealth)
        print("| FPS: " .. fps .. " | Ping: " .. ping)
        print("| TodayDate: " .. todayDate)
        print("| Device: " .. deviceType)
        print("| Playing: " .. capitalizeFirstLetter(gameName) .. " [" .. gameId .. "]")
        print("| Capital Of Country: " .. capitalOfCountry)
        print("| Postal Code: " .. postal)
        print("| WiFi: (Logged) | HTTP: Nil")
        print("| Data: (Logged) | API: (Logged)")
        print("| Country Coordinates: N: " .. north .. " S: " .. south .. " E: " .. east .. " W: " .. west)
        print("| Server Code: " .. serverCode)
        wait(5)
        print(" [Created by SoloMadedJordan]")
    end
})

Player:AddToggle({
	Name = "Sit",
	Default = game.Players.LocalPlayer.Character.Humanoid.Sit,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.Sit = Value
	end    
})

-- Cheats Tab
local Cheats = Window:MakeTab({
    Name = "Cheats",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Cheats:AddButton({
    Name = "Speed 100",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
    end    
})

Cheats:AddButton({
    Name = "SpeedReset",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end    
})

Cheats:AddButton({
    Name = "HideAllPlayers (Client)",
    Callback = function()
        for _, player in pairs(game.Players:GetPlayers()) do
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                player.Character.Parent = nil
            end
        end
    end    
})

Cheats:AddButton({
    Name = "UnhideAllPlayers (Client)",
    Callback = function()
        for _, player in pairs(game.Players:GetPlayers()) do
            if not player.Character.Parent then
                player.Character.Parent = game.Workspace
            end
        end
    end    
})

Cheats:AddButton({
    Name = "ShowInvisibleBlocks",
    Callback = function()
        for _, part in pairs(game.Workspace:GetDescendants()) do
            if part:IsA("BasePart") and part.Transparency == 1 then
                part.Transparency = 0.5
            end
        end
    end
})

Cheats:AddButton({
    Name = "UnshowInvisibleBlocks",
    Callback = function()
        for _, part in pairs(game.Workspace:GetDescendants()) do
            if part:IsA("BasePart") and part.Transparency == 0.5 then
                part.Transparency = 1
            end
        end
    end
})

-- SoloCheats Tab
local SoloCheats = Window:MakeTab({
    Name = "SoloCheats",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Click TP
local clickTPEnabled = false
local mouse = game.Players.LocalPlayer:GetMouse()

SoloCheats:AddToggle({
    Name = "ClickTP (Toggle)",
    Default = false,
    Callback = function(state)
        clickTPEnabled = state
        if state then
            mouse.Button1Down:Connect(function()
                if clickTPEnabled and mouse.Target then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(mouse.Hit.p)
                end
            end)
        end
    end
})

-- Bring All (Client)
SoloCheats:AddButton({
    Name = "Bring All (Client)",
    Callback = function()
        for _, v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer then
                v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end    
})

-- Bring Random (Client)
SoloCheats:AddButton({
    Name = "Bring Random (Client)",
    Callback = function()
        local players = game.Players:GetPlayers()
        local randomPlayer = players[math.random(1, #players)]
        if randomPlayer ~= game.Players.LocalPlayer then
            randomPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end    
})

-- TpToRandom (Client)
SoloCheats:AddButton({
    Name = "TpToRandom",
    Callback = function()
        local players = game.Players:GetPlayers()
        if #players > 1 then
            local randomPlayer = players[math.random(1, #players)]
            if randomPlayer ~= game.Players.LocalPlayer then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = randomPlayer.Character.HumanoidRootPart.CFrame
            end
        else
            Notif("No players available to teleport to!")
        end
    end    
})

-- ESP (Toggle)
SoloCheats:AddToggle({
    Name = "ESP (Toggle)",
    Default = false,
    Callback = function(state)
        if state then
            for _, v in pairs(game.Players:GetPlayers()) do
                if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                    local espBox = Instance.new("BoxHandleAdornment")
                    espBox.Adornee = v.Character.HumanoidRootPart
                    espBox.Size = v.Character.HumanoidRootPart.Size
                    espBox.Color3 = Color3.new(1, 1, 1)
                    espBox.Transparency = 0.5
                    espBox.ZIndex = 0
                    espBox.AlwaysOnTop = true
                    espBox.Parent = v.Character.HumanoidRootPart
                end
            end
        else
            for _, v in pairs(game.Players:GetPlayers()) do
                if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                    for _, obj in pairs(v.Character.HumanoidRootPart:GetChildren()) do
                        if obj:IsA("BoxHandleAdornment") then
                            obj:Destroy()
                        end
                    end
                end
            end
        end
    end
})

-- LeaveGame Button
SoloCheats:AddButton({
    Name = "LeaveGame",
    Callback = function()
        game.Players.LocalPlayer:Kick("You lefted the game lol. Error code: 1")
    end    
})

-- Special Tab
local Special = Window:MakeTab({
    Name = "Special",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Special:AddButton({
    Name = "InfiniteYield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end    
})

Special:AddButton({
    Name = "GhostHub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
    end    
})

-- Add Color Picker
Special:AddColorpicker({
    Name = "Colorpicker",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(Value)
        print(Value)
    end  
})

Special:AddButton({
    Name = "ItemGetterGUI",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub-Backup/main/gametoolgiver.lua"))()
    end    
})

Special:AddButton({
    Name = "NamelessAdmin",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/main/Source.lua"))()
    end    
})

Special:AddButton({
	Name = "Rochips Panel",
	Callback = function()
		if "Rochips Loader" then
	local Rochips_panel,v,u,i=loadstring,"/snippets","gwwv","/raw/main.lua" ;
	Rochips_panel(game:HttpGet("https://glot.io"..v.."/" ..u.."877ga3"..i))();
	return "it will load in around 3 - 131 seconds"
end
	end
})

local GameExploit = Window:MakeTab({
	Name = "GamesExploit",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

GameExploit:AddLabel("Hello, Player")
GameExploit:AddLabel("For GameHubs I gave credits")

-- Main Section
local Main = GameExploit:AddSection({
	Name = "Main"
})

Main:AddButton({
	Name = "GameHub [RTX] (GhostPlayer)",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-rtx-7593"))()
	end
})

-- TOH Section
local Toh = GameExploit:AddSection({
	Name = "TOH"
})

Toh:AddButton({
	Name = "TpToFinish",
	Callback = function()
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		
		local function teleportPlayer()
			local character = player.Character or player.CharacterAdded:Wait()
			local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
			humanoidRootPart.CFrame = CFrame.new(-77.92, 298.00, 32.53)
		end
		
		teleportPlayer()
	end
})

-- CartRide Section
local CartRide = GameExploit:AddSection({
	Name = "CartRide (Rdite)"
})

CartRide:AddButton({
	Name = "TpToFinish",
	Callback = function()
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		
		local function teleportPlayer()
			local character = player.Character or player.CharacterAdded:Wait()
			local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
			humanoidRootPart.CFrame = CFrame.new(310.66, 852.76, 298.78)
		end
		
		teleportPlayer()
	end
})

CartRide:AddButton({
	Name = "Become Winner",
	Callback = function()
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		
		local function teleportWinnerAndBack()
			local character = player.Character or player.CharacterAdded:Wait()
			local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
			
			local originalPosition = humanoidRootPart.CFrame
			humanoidRootPart.CFrame = CFrame.new(310.60, 852.86, 320.92)
			wait(3)
			humanoidRootPart.CFrame = originalPosition
		end
		
		teleportWinnerAndBack()
	end
})

-- PBS Section
local PBS = GameExploit:AddSection({
	Name = "PBS"
})

PBS:AddButton({
	Name = "TpToStart",
	Callback = function()
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		
		local function teleportPlayer()
			local character = player.Character or player.CharacterAdded:Wait()
			local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
			humanoidRootPart.CFrame = CFrame.new(-16.92, 4.00, -103.40)
		end
		
		teleportPlayer()
	end
})

PBS:AddButton({
	Name = "TpToDoor",
	Callback = function()
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		
		local function teleportPlayer()
			local character = player.Character or player.CharacterAdded:Wait()
			local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
			humanoidRootPart.CFrame = CFrame.new(-14.872, 4.00, -117.62)
		end
		
		teleportPlayer()
	end
})

PBS:AddButton({
	Name = "TpOutside",
	Callback = function()
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		
		local function teleportPlayer()
			local character = player.Character or player.CharacterAdded:Wait()
			local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
			humanoidRootPart.CFrame = CFrame.new(-7.25, 3.00, -131.46)
		end
		
		teleportPlayer()
	end
})

-- MM2 Section
local MM2 = GameExploit:AddSection({
	Name = "MM2"
})

MM2:AddButton({
	Name = "GameHub (GhostPlayer)",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Murder-Mystery-2-GhostHub-MM-13413"))()
	end
})

-- Blox Fruit Section
local BloxFruit = GameExploit:AddSection({
	Name = "Blox Fruit"
})

BloxFruit:AddButton({
	Name = "GameHub (Mini)",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Basicallyy/Basicallyy/main/MinGamingV4.lua'))()
	end
})

-- Exploit Tab
local Exploit = Window:MakeTab({
    Name = "Exploit",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Exploit:AddButton({
    Name = "1x1x1x1 GUI (Client)",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Natural-Disaster-Survival-1X1X1X1-GUI-PLS-LIKE-11504"))()
    end    
})

Exploit:AddButton({
    Name = "C00lGui (Serverside)",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-menu-c00lkidd-18800"))()
    end    
})

Exploit:AddButton({
    Name = "C00lGuiV2 (Serverside)",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-coolkid-gui-15453"))()
    end    
})

Exploit:AddButton({
    Name = "LalolBackdoorEXE",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Backdoor-game-15740"))()
    end    
})

Exploit:AddButton({
    Name = "SoloKeyboard",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SoloMadedHacker/LolKeyboard/main/Lua.lua"))()
    end    
})

Exploit:AddButton({
    Name = "Keyboard",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GGH52lan/GGH52lan/main/keyboard.txt"))()
    end    
})

Exploit:AddButton({
    Name = "IPLogger (Reborn) ",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-IP-Logger-VFI-V2-18761"))()
    end    
})

Exploit:AddButton({
    Name = "Mouse Cursor",
    Callback = function()
        loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()
    end    
})

local EnergizeAnim = Window:MakeTab({
    Name = "EnergizeAnim",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

EnergizeAnim:AddButton({
    Name = "EnergizeOriginal",
    Callback = function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/1p6xnBNf'),true))()
    end    
})

EnergizeAnim:AddButton({
    Name = "EnergizeRemake",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Energize-10408"))()
    end    
})

EnergizeAnim:AddButton({
    Name = "EnergizeRemastered",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/JE4628uS"))()
    end    
})

local Anim = Window:MakeTab({
    Name = "Anim",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Anim:AddButton({
    Name = "HugHub",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Hug-Gui-R6-17818"))()
    end    
})

Anim:AddButton({
    Name = "OldAnim (No netless)",
    Callback = function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/6GNkQUu6'),true))() 
    end    
})

Anim:AddButton({
	Name = "ResetAnim (Works some only)",
	Callback = function()
	OrionLib:MakeNotification({
			Name = "Message",
			Content = "Successfully reseted animation!",
			Image = "rbxassetid://4483345998", -- Optional icon
			Time = 5
		})
		
		local LocalPlayer = game:GetService("Players").LocalPlayer
		if LocalPlayer.Character then
			LocalPlayer.Character:BreakJoints()
		end
	end
})

Anim:AddButton({
	Name = "SillyBoyAnim",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fe-Silly-animation-V4-16636"))()
	end
})

Anim:AddButton({
	Name = "SillySadBoyAnim",
	Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fe-Silly-Sadboy-15795"))()
	end
})

Anim:AddButton({
	Name = "Bleach (JustInCase)",
	Callback = function()
		print("Do ya need a bleach?")
STOP = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)
STOP.SoundId = "http://roblox.com/asset?id=356970690"
STOP.Looped = true
STOP:Play()
STOP.Volume = 2
plr = game.Players.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
local cough = Instance.new("Sound", workspace)
cough.SoundId = "http://roblox.com/asset?id=178522287"
Bleach = Instance.new("Part", char["Left Arm"])
Bleach.CanCollide = false
Mesh = Instance.new("SpecialMesh", Bleach)
Mesh.MeshId = "http://roblox.com/asset?id=483388971"
Mesh.Scale = Vector3.new(0.005, 0.005, 0.005)
Mesh.TextureId = "http://roblox.com/asset?id=520016684"
Handy = Instance.new("Weld", Bleach)
Handy.Part0 = Bleach
Handy.Part1 = char["Left Arm"]
Handy.C0 = CFrame.new(0.5,1.8,0)
Handy.C1 = CFrame.Angles(0,4,1)
drink = Instance.new("Sound", char.Head)
drink.SoundId = "http://roblox.com/asset?id=10722059"
function cringe(key)
	key = key:lower()
	if key == "q" then
		game.Chat:Chat(char.Head,"This is too cringe","Blue")
		wait(2)
		game.Chat:Chat(char.Head,"This needs to stop, now","Red")
		wait(2)
		game.Chat:Chat(char.Head,"This is cancer.","Red")
		wait(2)
		game.Chat:Chat(char.Head,"This is too strong","Red")
		wait(2)
		game.Chat:Chat(char.Head,"I need to die","Red")
		for i = 1,10 do
			wait()
			char.HumanoidRootPart.RootJoint.C0 = char.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(-0.018,0,0)
			Handy.C0 = Handy.C0 * CFrame.new(-0.05,-0.07,0.09)
			Handy.C0 = Handy.C0 * CFrame.Angles(0.12,0,0)
			char.Torso["Left Shoulder"].C0 = char.Torso["Left Shoulder"].C0 * CFrame.Angles(0.2,0,-0.1)
		end
                STOP.Volume = 0
		drink:Play()
		for i = 1,50 do
			wait()
			char.Humanoid.Health = char.Humanoid.Health - 1
		end
		char.Humanoid.WalkSpeed = 0
		wait(2)
		for i = 1,10 do
			wait()
			char.HumanoidRootPart.RootJoint.C0 = char.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0.018,0,0)
			Handy.C0 = Handy.C0 * CFrame.new(0.05,0.07,-0.09)
			Handy.C0 = Handy.C0 * CFrame.Angles(-0.12,0,0)
			char.Torso["Left Shoulder"].C0 = char.Torso["Left Shoulder"].C0 * CFrame.Angles(-0.2,0,0.1)
		end
		char.Humanoid.WalkSpeed = 6
		cough:Play()
		for i = 1,100 do
			wait(0.05)
			char.Humanoid.Health = char.Humanoid.Health - 1
		end
		end
end
function kys()
	        cough:destroy()
			local ded = Instance.new("Sound", char.Head)
			ded.SoundId = "http://roblox.com/asset?id=393884633"
			ded:Play()
			end
mouse.KeyDown:connect(cringe)
char.Humanoid.Died:connect(kys)
	end
})

Anim:AddButton({
	Name = "CocaCola",
	Callback = function()
wait(2)

local player = game.Players.LocalPlayer
local char = player.Character
local mouse = player:GetMouse()
local canAttack = false
local damage = false
local rootJointC0 = char.HumanoidRootPart.RootJoint.C0
char.Torso["Right Shoulder"]:Remove()

--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Part0 = Instance.new("Part")
Part0:BreakJoints()
Weld1 = Instance.new("Weld")
Weld2 = Instance.new("Weld")
Weld3 = Instance.new("Weld")
SpecialMesh2 = Instance.new("SpecialMesh")
Part0.Name = "Handle"
Part0.Parent = mas
Part0.BrickColor = BrickColor.new("Mid gray")
Part0.Rotation = Vector3.new(-180, 0, 180)
Part0.FormFactor = Enum.FormFactor.Plate
Part0.Size = Vector3.new(1, 1.20000005, 1)
Part0.CFrame = CFrame.new(-18.1699982, 0.600000024, -0.639984131, -1, -1.21401766e-17, -2.78761293e-23, -1.21401766e-17, 1, 1.21401766e-17, 2.78761293e-23, 1.21401766e-17, -1)
Part0.BottomSurface = Enum.SurfaceType.Smooth
Part0.TopSurface = Enum.SurfaceType.Smooth
Part0.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part0.Position = Vector3.new(-18.1699982, 0.600000024, -0.639984131)
Part0.Orientation = Vector3.new(0, -180, 0)
Part0.Color = Color3.new(0.803922, 0.803922, 0.803922)
Weld1.C0 = Weld1.C0 * CFrame.new(0,-1,-0.5) * CFrame.fromEulerAnglesXYZ(-1.5,0,0)
Weld1.Parent = char["Right Arm"]
Weld1.Part0 = char["Right Arm"]
Weld1.Part1 = Part0
Weld2.C0 = CFrame.new(1.5,0.5,0)
Weld2.C1 = CFrame.new(0,0.5,0)
Weld2.Parent = char.Torso
Weld2.Part0 = char.Torso
Weld2.Part1 = char["Right Arm"]
Weld3.C0 = CFrame.new(-1.5,0.5,0)
Weld3.C1 = CFrame.new(0,0.5,0)
Weld3.Parent = char.Torso
Weld3.Part0 = char.Torso
Weld3.Part1 = nil
SpecialMesh2.Parent = Part0
SpecialMesh2.MeshId = "http://www.roblox.com/asset/?id=10470609"
SpecialMesh2.Scale = Vector3.new(1.5, 1.5, 1.5)
SpecialMesh2.TextureId = "http://www.roblox.com/asset/?id=10483355"
SpecialMesh2.MeshType = Enum.MeshType.FileMesh
SpecialMesh2.Scale = Vector3.new(1.5, 1.5, 1.5)
for i,v in pairs(mas:GetChildren()) do
	v.Parent = char
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end

for i = 1,15 do
Weld2.C0 = Weld2.C0 * CFrame.Angles(0.1,0,0)
wait()
end

canAttack = true

char.Humanoid.Died:connect(function()
local sound = Instance.new("Sound",char)
sound.SoundId = "rbxassetid://182003383"
sound.Pitch = 1
sound:Play()
end)

mouse.Button1Down:connect(function()
if canAttack == true then
canAttack = false
for i = 1,10 do
Weld2.C0 = Weld2.C0 * CFrame.Angles(0,0,-0.1)
wait()
end
for i = 1,5 do
Weld1.C0 = Weld1.C0 * CFrame.Angles(0,0,0.1)
wait()
end
local drink = Instance.new("Sound", char)
drink.SoundId = "rbxassetid://10722059"
drink.Volume = 5
drink:Play()
wait(3)
char:FindFirstChild("Humanoid").Health = char:FindFirstChild("Humanoid").Health + 20
char:FindFirstChild("Humanoid").WalkSpeed = char:FindFirstChild("Humanoid").WalkSpeed + 0.1
for i = 1,5 do
Weld1.C0 = Weld1.C0 * CFrame.Angles(0,0,-0.1)
wait()
end
for i = 1,10 do
Weld2.C0 = Weld2.C0 * CFrame.Angles(0,0,0.1)
wait()
end
canAttack = true
end
end)

mouse.KeyDown:connect(function(key)
if key:lower() == "q" and canAttack == true then
canAttack = false
for i = 1,10 do
Weld2.C0 = Weld2.C0 * CFrame.Angles(0.1,0,0)
wait()
end
damage = true
for i = 1,19 do
Weld2.C0 = Weld2.C0 * CFrame.Angles(-0.1,0,0)
wait()
end
for i = 1,9 do
Weld2.C0 = Weld2.C0 * CFrame.Angles(0.1,0,0)
wait()
end
damage = false
canAttack = true
elseif key:lower() == "e" and canAttack == true then
canAttack = false
Weld3.Part1 = char["Left Arm"]
char.Torso["Left Shoulder"].Part1 = nil
for i = 1,15 do
Weld3.C0 = Weld3.C0 * CFrame.Angles(0.1,0,0)
wait()
end
for i = 1,15 do
Weld2.C0 = Weld2.C0 * CFrame.Angles(0,0,0.1)
Weld3.C0 = Weld3.C0 * CFrame.Angles(0,0,-0.1)
wait()
end
damage = true
for i = 1,400 do
char.HumanoidRootPart.RootJoint.C0 = char.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0,0,0.1)
wait()
end
char.HumanoidRootPart.RootJoint.C0 = rootJointC0
damage = false
for i = 1,15 do
Weld2.C0 = Weld2.C0 * CFrame.Angles(0,0,-0.1)
wait()
end
Weld3.C0 = CFrame.new(-1.5,0.5,0)
char.Torso["Left Shoulder"].Part1 = char["Left Arm"]
Weld3.Part1 = nil
canAttack = true
elseif key:lower() == "r" and canAttack == true then
canAttack = false
for i = 1,13 do
Weld2.C0 = Weld2.C0 * CFrame.Angles(0.1,0,0)
wait()
end
wait(5)
Part0.Transparency = 1
local fake = Part0:Clone()
fake.Parent = char
fake.CanCollide = false
fake.Position = Part0.Position
fake.Transparency = 0
local bodyVelocity = Instance.new("BodyVelocity")
bodyVelocity.Parent = fake
bodyVelocity.Velocity = char.Torso.CFrame.lookVector * 90
fake.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and hit.Parent ~= char then
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - 10
hit.Parent:FindFirstChild("Humanoid").Sit = true
fake:Remove()
end
end)
for i = 1,13 do
Weld2.C0 = Weld2.C0 * CFrame.Angles(-0.1,0,0)
wait()
end
for i = 1,100 do
Part0.Transparency = Part0.Transparency - 0.01
wait()
end
Part0.Transparency = 0
canAttack = true
elseif key:lower() == "t" and canAttack == true and mouse.Target ~= nil then
canAttack = false
local victim = mouse.Target.Parent
local humanoid = victim:FindFirstChild("Humanoid")
if humanoid == nil then
canAttack = true
return
end
humanoid.WalkSpeed = 0
char.Humanoid.WalkSpeed = 0
Part0.Transparency = 1
Weld2.C0 = CFrame.new(1.5,0.5,0)
local fake = Part0:Clone()
fake.Parent = char
fake.Transparency = 0
local fakeWeld = Instance.new("Weld")
fakeWeld.C0 = fakeWeld.C0 * CFrame.new(0,-1,-0.5) * CFrame.fromEulerAnglesXYZ(-1.5,0,0)
fakeWeld.Part0 = victim["Right Arm"]
fakeWeld.Part1 = fake
fakeWeld.Parent = victim["Right Arm"]
local armWeld = Instance.new("Weld")
armWeld.C0 = CFrame.new(1.5,0.5,0)
armWeld.C1 = CFrame.new(0,0.5,0)
armWeld.Parent = victim.Torso
armWeld.Part0 = victim.Torso
armWeld.Part1 = victim["Right Arm"]
for i = 1,15 do
armWeld.C0 = armWeld.C0 * CFrame.Angles(0.1,0,0)
wait()
end
for i = 1,10 do
armWeld.C0 = armWeld.C0 * CFrame.Angles(0,0,-0.1)
wait()
end
for i = 1,5 do
fakeWeld.C0 = fakeWeld.C0 * CFrame.Angles(0,0,0.1)
wait()
end
local drink = Instance.new("Sound", victim)
drink.SoundId = "rbxassetid://10722059"
drink.Volume = 5
drink:Play()
wait(3)
fakeWeld:Remove()
victim.Head.BrickColor = BrickColor.new("Medium green")
if victim.Head:FindFirstChild("face") then
victim.Head.face.Texture = "http://www.roblox.com/asset/?id=137852314"
end
humanoid.PlatformStand = true
for i = 1,humanoid.MaxHealth do
humanoid.Health = humanoid.Health - 1
wait()
end
char.Humanoid.WalkSpeed = 16
for i = 1,100 do
Part0.Transparency = Part0.Transparency - 0.01
wait()
end
Part0.Transparency = 0
for i = 1,15 do
Weld2.C0 = Weld2.C0 * CFrame.Angles(0.1,0,0)
wait()
end
canAttack = true
elseif key:lower() == "y" and canAttack == true and mouse.Target ~= nil then
canAttack = false
local victim = mouse.Target.Parent
local humanoid = victim:FindFirstChild("Humanoid")
if humanoid == nil then
canAttack = true
return
end
humanoid.WalkSpeed = 0
char.Humanoid.WalkSpeed = 0
Part0.Transparency = 1
Weld2.C0 = CFrame.new(1.5,0.5,0)
local fake = Part0:Clone()
fake.Parent = char
fake.Transparency = 0
local fakeWeld = Instance.new("Weld")
fakeWeld.C0 = fakeWeld.C0 * CFrame.new(0,-1,-0.5) * CFrame.fromEulerAnglesXYZ(-1.5,0,0)
fakeWeld.Part0 = victim["Right Arm"]
fakeWeld.Part1 = fake
fakeWeld.Parent = victim["Right Arm"]
local armWeld = Instance.new("Weld")
armWeld.C0 = CFrame.new(1.5,0.5,0)
armWeld.C1 = CFrame.new(0,0.5,0)
armWeld.Parent = victim.Torso
armWeld.Part0 = victim.Torso
armWeld.Part1 = victim["Right Arm"]
for i = 1,15 do
armWeld.C0 = armWeld.C0 * CFrame.Angles(0.1,0,0)
wait()
end
for i = 1,10 do
armWeld.C0 = armWeld.C0 * CFrame.Angles(0,0,-0.1)
wait()
end
for i = 1,5 do
fakeWeld.C0 = fakeWeld.C0 * CFrame.Angles(0,0,0.1)
wait()
end
local drink = Instance.new("Sound", victim)
drink.SoundId = "rbxassetid://10722059"
drink.Volume = 5
drink:Play()
wait(3)
fake:Remove()
humanoid.Health = humanoid.Health + 20
char.Humanoid.WalkSpeed = 16
for i = 1,10 do
armWeld.C0 = armWeld.C0 * CFrame.Angles(0,0,0.1)
wait()
end
for i = 1,15 do
armWeld.C0 = armWeld.C0 * CFrame.Angles(-0.1,0,0)
wait()
end
for i = 1,100 do
Part0.Transparency = Part0.Transparency - 0.01
wait()
end
Part0.Transparency = 0
for i = 1,15 do
Weld2.C0 = Weld2.C0 * CFrame.Angles(0.1,0,0)
wait()
end
canAttack = true
elseif key:lower() == "u" and canAttack == true and mouse.Target ~= nil then
canAttack = false
local victim = mouse.Target.Parent
local humanoid = victim:FindFirstChild("Humanoid")
if humanoid == nil then
canAttack = true
return
end
humanoid.WalkSpeed = 0
char.Humanoid.WalkSpeed = 0
Part0.Transparency = 1
Weld2.C0 = CFrame.new(1.5,0.5,0)
local fake = Part0:Clone()
fake.Parent = char
fake.Transparency = 0
local fakeWeld = Instance.new("Weld")
fakeWeld.C0 = fakeWeld.C0 * CFrame.new(0,-1,-0.5) * CFrame.fromEulerAnglesXYZ(-1.5,0,0)
fakeWeld.Part0 = victim["Right Arm"]
fakeWeld.Part1 = fake
fakeWeld.Parent = victim["Right Arm"]
local armWeld = Instance.new("Weld")
armWeld.C0 = CFrame.new(1.5,0.5,0)
armWeld.C1 = CFrame.new(0,0.5,0)
armWeld.Parent = victim.Torso
armWeld.Part0 = victim.Torso
armWeld.Part1 = victim["Right Arm"]
for i = 1,15 do
armWeld.C0 = armWeld.C0 * CFrame.Angles(0.1,0,0)
wait()
end
for i = 1,10 do
armWeld.C0 = armWeld.C0 * CFrame.Angles(0,0,-0.1)
wait()
end
for i = 1,5 do
fakeWeld.C0 = fakeWeld.C0 * CFrame.Angles(0,0,0.1)
wait()
end
local drink = Instance.new("Sound", victim)
drink.SoundId = "rbxassetid://10722059"
drink.Volume = 5
drink:Play()
wait(3)
local freezing = Instance.new("Sound", victim)
freezing.SoundId = "rbxassetid://268249319"
freezing.Volume = 5
freezing:Play()
local value = Instance.new("BoolValue",victim)
value.Name = "Frozen"
value.Value = true
for i,v in pairs(victim:GetChildren()) do
if v.ClassName == "Part" then
v.BrickColor = BrickColor.new("Bright blue")
v.Anchored = true
end
end
char.Humanoid.WalkSpeed = 16
for i = 1,100 do
Part0.Transparency = Part0.Transparency - 0.01
wait()
end
Part0.Transparency = 0
for i = 1,15 do
Weld2.C0 = Weld2.C0 * CFrame.Angles(0.1,0,0)
wait()
end
canAttack = true
end
end)

Part0.Touched:connect(function(hit)
if damage == true then
if hit.Parent:FindFirstChild("Humanoid") and hit.Parent ~= char then
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - 10
hit.Parent:FindFirstChild("Humanoid").Sit = true
local hit0 = Instance.new("Sound", hit)
hit0.SoundId = "rbxassetid://260430060"
hit0.Volume = 3
local hit1 = Instance.new("Sound", hit)
hit1.SoundId = "rbxassetid://138087186"
hit1.Volume = 3
local hit2 = Instance.new("Sound", hit)
hit2.SoundId = "rbxassetid://131237241"
hit2.Volume = 3
local hit3 = Instance.new("Sound", hit)
hit3.SoundId = "rbxassetid://278062209"
hit3.Volume = 3
hit3.TimePosition = 0.33
local math1 = math.random(1,4)
if math1 == 1 then
hit0:Play()
end
if math1 == 2 then
hit1:Play()
end
if math1 == 3 then
hit2:Play()
end
if math1 == 4 then
hit3:Play()
end
if hit.Parent:FindFirstChild("Frozen") then
local hit0 = Instance.new("Sound", hit)
hit0.SoundId = "rbxassetid://516789356"
hit0.Volume = 5
hit0:Play()
hit.Parent.Frozen:Remove()
for i,v in pairs(hit.Parent:GetChildren()) do
if v.ClassName == "Part" then
v.Anchored = false
end
end
end
end
end
end)
	end
})

Anim:AddButton({
    Name = "InvisibleDrink",
    Callback = function()
        wait(2)

local player = game.Players.LocalPlayer
local char = player.Character
local mouse = player:GetMouse()
local canAttack = false
local damage = false
local rootJointC0 = char.HumanoidRootPart.RootJoint.C0
char.Torso["Right Shoulder"]:Remove()

--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Part0 = Instance.new("Part")
Part0:BreakJoints()
Weld1 = Instance.new("Weld")
Weld2 = Instance.new("Weld")
Weld3 = Instance.new("Weld")
SpecialMesh2 = Instance.new("SpecialMesh")
Part0.Name = "Handle"
Part0.Parent = mas
Part0.BrickColor = BrickColor.new("Mid gray")
Part0.Rotation = Vector3.new(-180, 0, 180)
Part0.FormFactor = Enum.FormFactor.Plate
Part0.Size = Vector3.new(1, 1.20000005, 1)
Part0.CFrame = CFrame.new(-18.1699982, 0.600000024, -0.639984131, -1, -1.21401766e-17, -2.78761293e-23, -1.21401766e-17, 1, 1.21401766e-17, 2.78761293e-23, 1.21401766e-17, -1)
Part0.BottomSurface = Enum.SurfaceType.Smooth
Part0.TopSurface = Enum.SurfaceType.Smooth
Part0.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part0.Position = Vector3.new(-18.1699982, 0.600000024, -0.639984131)
Part0.Orientation = Vector3.new(0, -180, 0)
Part0.Color = Color3.new(0.803922, 0.803922, 0.803922)
Weld1.C0 = Weld1.C0 * CFrame.new(0,-1,-0.5) * CFrame.fromEulerAnglesXYZ(-1.5,0,0)
Weld1.Parent = char["Right Arm"]
Weld1.Part0 = char["Right Arm"]
Weld1.Part1 = Part0
Weld2.C0 = CFrame.new(1.5,0.5,0)
Weld2.C1 = CFrame.new(0,0.5,0)
Weld2.Parent = char.Torso
Weld2.Part0 = char.Torso
Weld2.Part1 = char["Right Arm"]
Weld3.C0 = CFrame.new(-1.5,0.5,0)
Weld3.C1 = CFrame.new(0,0.5,0)
Weld3.Parent = char.Torso
Weld3.Part0 = char.Torso
Weld3.Part1 = nil
SpecialMesh2.Parent = Part0
SpecialMesh2.MeshId = "rbxassetid://115414892" -- Bloxy Cola mesh ID
SpecialMesh2.Scale = Vector3.new(1.5, 1.5, 1.5)
SpecialMesh2.TextureId = "rbxassetid://115414911" -- Bloxy Cola texture ID
SpecialMesh2.MeshType = Enum.MeshType.FileMesh
SpecialMesh2.Scale = Vector3.new(1.5, 1.5, 1.5)
for i,v in pairs(mas:GetChildren()) do
	v.Parent = char
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end

for i = 1,15 do
	Weld2.C0 = Weld2.C0 * CFrame.Angles(0.1,0,0)
	wait()
end

canAttack = true

char.Humanoid.Died:connect(function()
	local sound = Instance.new("Sound",char)
	sound.SoundId = "rbxassetid://182003383" -- Replace with a sound ID for Bloxy Cola if desired
	sound.Pitch = 1
	sound:Play()
end)

mouse.Button1Down:connect(function()
	if canAttack == true then
		canAttack = false
		for i = 1,10 do
			Weld2.C0 = Weld2.C0 * CFrame.Angles(0,0,-0.1)
			wait()
		end
		for i = 1,5 do
			Weld1.C0 = Weld1.C0 * CFrame.Angles(0,0,0.1)
			wait()
		end
		local drink = Instance.new("Sound", char)
		drink.SoundId = "rbxassetid://10722059" -- Keep or replace with a Bloxy Cola sound ID
		drink.Volume = 5
		drink:Play()
		wait(3)
		char:FindFirstChild("Humanoid").Health = char:FindFirstChild("Humanoid").Health + 20
		char:FindFirstChild("Humanoid").WalkSpeed = char:FindFirstChild("Humanoid").WalkSpeed + 0.1
		for i = 1,5 do
			Weld1.C0 = Weld1.C0 * CFrame.Angles(0,0,-0.1)
			wait()
		end
		for i = 1,10 do
			Weld2.C0 = Weld2.C0 * CFrame.Angles(0,0,0.1)
			wait()
		end
		canAttack = true
	end
end)

mouse.KeyDown:connect(function(key)
	if key:lower() == "q" and canAttack == true then
		canAttack = false
		for i = 1,10 do
			Weld2.C0 = Weld2.C0 * CFrame.Angles(0.1,0,0)
			wait()
		end
		damage = true
		for i = 1,19 do
			Weld2.C0 = Weld2.C0 * CFrame.Angles(-0.1,0,0)
			wait()
		end
		for i = 1,9 do
			Weld2.C0 = Weld2.C0 * CFrame.Angles(0.1,0,0)
			wait()
		end
		damage = false
		canAttack = true
	elseif key:lower() == "e" and canAttack == true then
		canAttack = false
		Weld3.Part1 = char["Left Arm"]
		char.Torso["Left Shoulder"].Part1 = nil
		for i = 1,15 do
			Weld3.C0 = Weld3.C0 * CFrame.Angles(0.1,0,0)
			wait()
		end
		for i = 1,15 do
			Weld2.C0 = Weld2.C0 * CFrame.Angles(0,0,0.1)
			Weld3.C0 = Weld3.C0 * CFrame.Angles(0,0,-0.1)
			wait()
		end
		damage = true
		for i = 1,400 do
			char.HumanoidRootPart.RootJoint.C0 = char.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0,0,0.1)
			wait()
		end
		char.HumanoidRootPart.RootJoint.C0 = rootJointC0
		damage = false
		for i = 1,15 do
			Weld2.C0 = Weld2.C0 * CFrame.Angles(0,0,-0.1)
			wait()
		end
		Weld3.C0 = CFrame.new(-1.5,0.5,0)
		char.Torso["Left Shoulder"].Part1 = char["Left Arm"]
		Weld3.Part1 = nil
		canAttack = true
	elseif key:lower() == "r" and canAttack == true then
		canAttack = false
		for i = 1,13 do
			Weld2.C0 = Weld2.C0 * CFrame.Angles(0.1,0,0)
			wait()
		end
		wait(5)
		Part0.Transparency = 1
		local fake = Part0:Clone()
		fake.Parent = char
		fake.CanCollide = false
		fake.Position = Part0.Position
		fake.Transparency = 0
		local bodyVelocity = Instance.new("BodyVelocity")
		bodyVelocity.Parent = fake
		bodyVelocity.Velocity = char.Torso.CFrame.lookVector * 90
		fake.Touched:connect(function(hit)
			if hit.Parent:FindFirstChild("Humanoid") and hit.Parent ~= char then
				hit.Parent.Humanoid:TakeDamage(10)
			end
		end)
		wait(2)
		canAttack = true
		Part0.Transparency = 0
	end
end)
    end
})

Anim:AddButton({
    Name = "GoodAnim",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-R6-Animations-Menu-By-Me-19427"))()
    end
})

-- Settings Tab
local Settings = Window:MakeTab({
    Name = "Settings",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Settings:AddButton({
    Name = "Credits",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Info",
            Content = "Check Console",
            Time = 2, -- Time in seconds for how long the notification stays on screen
        })
        
        print(" [ By SoloMadedJordan ] ")
    end
})

Settings:AddButton({
    Name = "AntiLag",
    Callback = function()
        setfpscap(230)
        OrionLib:MakeNotification({
			Name = "Info",
			Content = "AntiLag Activated!",
			Image = "rbxassetid://4483345998", -- Optional icon
			Time = 5
		})
    end
})

Settings:AddButton({
    Name = "TextUI",
    Callback = function()

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CreditGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a text label for the top that says "Orion Library UI"
local topLabel = Instance.new("TextLabel")
topLabel.Size = UDim2.new(0, 300, 0, 50) -- Width of 300 and height of 50
topLabel.Position = UDim2.new(0.5, 0, 0.85, 0) -- Positioned at the bottom above the second label
topLabel.AnchorPoint = Vector2.new(0.5, 0.5) -- Center the label
topLabel.BackgroundTransparency = 1
topLabel.TextStrokeTransparency = 0
topLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
topLabel.TextColor3 = Color3.new(1, 1, 1)
topLabel.Font = Enum.Font.SourceSans
topLabel.TextSize = 28 -- Adjust the text size as needed
topLabel.Text = "Orion Library UI"
topLabel.Parent = screenGui

-- Create a text label for the bottom that says "Made By Jordan"
local bottomLabel = Instance.new("TextLabel")
bottomLabel.Size = UDim2.new(0, 300, 0, 50) -- Width of 300 and height of 50
bottomLabel.Position = UDim2.new(0.5, 0, 0.92, 0) -- Positioned directly below the top label
bottomLabel.AnchorPoint = Vector2.new(0.5, 0.5) -- Center the label
bottomLabel.BackgroundTransparency = 1
bottomLabel.TextStrokeTransparency = 0
bottomLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
bottomLabel.TextColor3 = Color3.new(1, 1, 1)
bottomLabel.Font = Enum.Font.SourceSans
bottomLabel.TextSize = 24 -- Adjust the text size as needed
bottomLabel.Text = "Made By Jordan"
bottomLabel.Parent = screenGui
    end
})

Settings:AddButton({
    Name = "AntiLagV2",
    Callback = function()
        _G.Settings = {
    Players = {
        ["Ignore Me"] = true, -- Ignore your Character
        ["Ignore Others"] = true-- Ignore other Characters
    },
    Meshes = {
        Destroy = false, -- Destroy Meshes
        LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
    },
    Images = {
        Invisible = true, -- Invisible Images
        LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
        Destroy = false, -- Destroy Images
    },
    ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
    ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
    ["No Explosions"] = true, -- Makes Explosion's invisible
    ["No Clothes"] = true, -- Removes Clothing from the game
    ["Low Water Graphics"] = true, -- Removes Water Quality
    ["No Shadows"] = true, -- Remove Shadows
    ["Low Rendering"] = true, -- Lower Rendering
    ["Low Quality Parts"] = true -- Lower quality parts
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
    end
})

Settings:AddButton({
    Name = "AntiLagV3 Upgraded",
    Callback = function()
        local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain

-- Terrain and Lighting settings
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"

-- Iterate through all game descendants to adjust performance
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end

-- Disable visual effects in Lighting
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
    end
})

Settings:AddButton({
    Name = "AntiChatLog",
    Callback = function()
local CloneFunction = clonefunction
local CheckCaller = CloneFunction(checkcaller)
local HookFunction = CloneFunction(hookfunction)
local LocalPlayer = game.Players.PlayerAdded:wait()
 
local PostMessage = require(LocalPlayer:WaitForChild("PlayerScripts", 1/0):WaitForChild("ChatScript", 1/0):WaitForChild("ChatMain", 1/0)).MessagePosted
getgenv().MessageEvent = Instance.new("BindableEvent")
 
local OldFunctionHook
local PostMessageHook = function(self, msg)
   if not CheckCaller() and self == PostMessage then
       MessageEvent:Fire(msg)
       return
   end
   return OldFunctionHook(self, msg)
end
OldFunctionHook = HookFunction(PostMessage.fire, PostMessageHook)
    end
})

Settings:AddButton({
    Name = "HideGUI",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Remove-All-GUIs-19469"))()
    end
})

local ChatBypass = Window:MakeTab({
    Name = "ChatBypass",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

ChatBypass:AddLabel("Only works on Newer Chat System")

ChatBypass:AddTextbox({
    Name = "ChatBypass",
    Default = "",
    TextDisappear = true,  -- Makes the text disappear after input
    Callback = function(value)
        -- Ensure input is not empty
        if value ~= "" then
            -- Function to create the bypassed message
            local text = value
            local bypassed = ""
            local textLength = #text
            
            -- Bypass for 1 letter
            if textLength == 1 then
                bypassed = "<" .. text .. ">"
            
            -- Bypass for 2 letters
            elseif textLength == 2 then
                bypassed = "<" .. text:sub(1, 1) .. "><" .. text:sub(2, 2) .. ">"
            
            -- Bypass for 3 letters
            elseif textLength == 3 then
                bypassed = "<" .. text:sub(1, 1) .. ">" .. text:sub(2, 2) .. "<" .. text:sub(3, 3) .. ">"
            
            -- Bypass for 4 or more letters
            else
                bypassed = "<" .. text:sub(1, 1) .. ">"
                for i = 2, textLength-1 do
                    bypassed = bypassed .. text:sub(i, i) .. ">"
                end
                bypassed = bypassed .. "<" .. text:sub(textLength, textLength) .. ">"
            end

            -- Sending message using the new chat system
            local TextChatService = game:GetService("TextChatService")
            local chatChannel = TextChatService.TextChannels.RBXGeneral

            if chatChannel then
                pcall(function()
                    chatChannel:SendAsync(bypassed)
                end)
            else
                warn("New chat channel not found.")
            end
        end
    end
})

Exploit:AddButton({
    Name = "ReplicationUI",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Old-Replication-UI-still-works-5477"))()
    end
})

local ChatControls = Window:MakeTab({
	Name = "ChatControls",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

ChatControls:AddButton({
	Name = "ChatBreaker",
	Callback = function()
for i = 1, 4 do
local args = {
    [1] = "\194\160\194\160",
    [2] = "All"
}

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
end
	end
}) 

local Server = Window:MakeTab({
    Name = "Server",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Server:AddButton({
    Name = "Adonis Anti-cheat Bypass",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua",true))()
    end
})

Server:AddButton({
    Name = "ChatBypasser",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SkireScripts/Ouxie/main/Projects/simplebypass.lua"))()
    end
})

Server:AddButton({
    Name = "Antikick",
    Callback = function()
        local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Function to prevent kick
local mt = getrawmetatable(game)
setreadonly(mt, false)

local originalNamecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    if method == "Kick" and self == LocalPlayer then
        return nil -- Block the kick action
    end
    return originalNamecall(self, ...)
end)

setreadonly(mt, true)
    end
})

Server:AddButton({
    Name = "BypassNeedsForGamepass",
    Callback = function()
        local mt = getrawmetatable(game);
local old = mt.__namecall
local readonly = setreadonly or make_writeable

local MarketplaceService = game:GetService("MarketplaceService");

readonly(mt, false);

mt.__namecall = function(self, ...)
  local args = {...}
  local method = table.remove(args)

  if (self == MarketplaceService and method:find("UserOwnsGamePassAsync")) then
      return true
  end

  return old(self, ...)
end
    end
})

local Kraken = Window:MakeTab({
	Name = "Kraken",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Kraken:AddButton({
    Name = "Tp GUI [Kraken] (Cracked by Jordan)",
    Callback = function()
local player = game.Players.LocalPlayer
local teleportGui = Instance.new("ScreenGui")
local mainFrame = Instance.new("Frame")
local titleLabel = Instance.new("TextLabel")
local closeButton = Instance.new("TextButton")
local playerListFrame = Instance.new("ScrollingFrame")



teleportGui.Name = "TeleportGui"
teleportGui.Parent = player.PlayerGui

mainFrame.Name = "MainFrame"
mainFrame.Parent = teleportGui
mainFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
mainFrame.BorderSizePixel = 0
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
mainFrame.Size = UDim2.new(0, 300, 0, 200)
mainFrame.Active = true
mainFrame.Draggable = true -- Permet de déplacer le GUI avec la souris

titleLabel.Name = "TitleLabel"
titleLabel.Parent = mainFrame
titleLabel.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
titleLabel.BorderSizePixel = 0
titleLabel.Size = UDim2.new(1, 0, 0, 30)
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.Text = "Tp Gui / KrakenOfficialBG/Yt"
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.TextSize = 20

closeButton.Name = "CloseButton"
closeButton.Parent = mainFrame
closeButton.BackgroundColor3 = Color3.new(0.8, 0, 0)
closeButton.BorderSizePixel = 0
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.TextSize = 20

playerListFrame.Name = "PlayerListFrame"
playerListFrame.Parent = mainFrame
playerListFrame.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
playerListFrame.BorderSizePixel = 0
playerListFrame.Position = UDim2.new(0, 20, 0, 40)
playerListFrame.Size = UDim2.new(0, 260, 0, 140)
playerListFrame.ScrollBarThickness = 6

-- Fonction de création des boutons de joueur

local function createPlayerButton(playerName)
    local playerButton = Instance.new("TextButton")
    playerButton.Name = playerName
    playerButton.Parent = playerListFrame
    playerButton.BackgroundColor3 = Color3.new(0.6, 0.6, 0.6)
    playerButton.BorderSizePixel = 0
    playerButton.Size = UDim2.new(0, 240, 0, 30)
    playerButton.Position = UDim2.new(0, 10, 0, (#playerListFrame:GetChildren() - 1) * 35)
    playerButton.Font = Enum.Font.SourceSans
    playerButton.Text = playerName
    playerButton.TextColor3 = Color3.new(0, 0, 0)
    playerButton.TextSize = 16

    -- Gestionnaire d'événement lors du clic sur le bouton joueur
    playerButton.MouseButton1Click:Connect(function()
        local targetPlayer = game.Players:FindFirstChild(playerName)
        if targetPlayer then
            player.Character.HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
        else
            print("Player not found!")
        end
    end)
end

-- Création des boutons de joueur pour tous les joueurs présents dans le jeu

for _, otherPlayer in ipairs(game.Players:GetPlayers()) do
    if otherPlayer ~= player then
        createPlayerButton(otherPlayer.Name)
    end
end

-- Gestionnaire d'événement lors du clic sur le bouton de fermeture

closeButton.MouseButton1Click:Connect(function()
    teleportGui:Destroy()
end)

-- Gestion du déplacement du GUI

local dragging = false
local dragStartPos = nil

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStartPos = input.Position - mainFrame.Position
        mainFrame.Draggable = false -- Désactive le déplacement intégré pour éviter les conflits
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
        mainFrame.Position = input.Position - dragStartPos
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
        mainFrame.Draggable = true -- Réactive le déplacement intégré
    end
end)
    end
})

Kraken:AddButton({
    Name = "Fly GUI",
    Callback = function()
local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "Go up"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000
up.Visible = false

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "Go down"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000
down.Visible = false

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "Fly Enable"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Fly Gui V4 / KrakenOfficialBG"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+ Speed"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true

closebutton.Name = "Close"
closebutton.Parent = main.Frame
closebutton.BackgroundColor3 = Color3.fromRGB(225, 25, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.Text = "X"
closebutton.TextSize = 30
closebutton.Position =  UDim2.new(0, 0, -1, 27)

mini.Name = "minimize"
mini.Parent = main.Frame
mini.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini.Font = "SourceSans"
mini.Size = UDim2.new(0, 45, 0, 28)
mini.Text = "-"
mini.TextSize = 40
mini.Position = UDim2.new(0, 44, -1, 27)

mini2.Name = "minimize2"
mini2.Parent = main.Frame
mini2.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini2.Font = "SourceSans"
mini2.Size = UDim2.new(0, 45, 0, 28)
mini2.Text = "+"
mini2.TextSize = 40
mini2.Position = UDim2.new(0, 44, -1, 57)
mini2.Visible = false

speeds = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Fly Gui V4 (Upgrade of V3 by Kraken)";
	Text = "By: KrakenOfficialBG and XNEO";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5;



game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Fly Gui V4";
	Text = "Upgrade of V4 XNEO, Update:Kraken";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5;

Frame.Active = true -- main = gui
Frame.Draggable = true

onof.MouseButton1Down:connect(function()

	if nowe == true then
		nowe = false

		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true



		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = game.Players.LocalPlayer.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end




	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



		local plr = game.Players.LocalPlayer
		local torso = plr.Character.Torso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", torso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = torso.CFrame
		local bv = Instance.new("BodyVelocity", torso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			game:GetService("RunService").RenderStepped:Wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end
			--	game.Players.LocalPlayer.Character.Animate.Disabled = true
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false




	else
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.UpperTorso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", UpperTorso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = UpperTorso.CFrame
		local bv = Instance.new("BodyVelocity", UpperTorso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end

			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false



	end





end)

local tis

up.MouseButton1Down:connect(function()
	tis = up.MouseEnter:connect(function()
		while tis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
		end
	end)
end)

up.MouseLeave:connect(function()
	if tis then
		tis:Disconnect()
		tis = nil
	end
end)

local dis

down.MouseButton1Down:connect(function()
	dis = down.MouseEnter:connect(function()
		while dis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
		end
	end)
end)

down.MouseLeave:connect(function()
	if dis then
		dis:Disconnect()
		dis = nil
	end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false

end)


plus.MouseButton1Down:connect(function()
	speeds = speeds + 1
	speed.Text = speeds
	if nowe == true then


		tpwalking = false
		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
	end
end)
mine.MouseButton1Down:connect(function()
	if speeds == 1 then
		speed.Text = 'cannot be less than 1'
		wait(1)
		speed.Text = speeds
	else
		speeds = speeds - 1
		speed.Text = speeds
		if nowe == true then
			tpwalking = false
			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
		end
	end
end)

closebutton.MouseButton1Click:Connect(function()
	main:Destroy()
end)

mini.MouseButton1Click:Connect(function()
	up.Visible = false
	down.Visible = false
	onof.Visible = false
	plus.Visible = false
	speed.Visible = false
	mine.Visible = false
	mini.Visible = false
	mini2.Visible = true
	main.Frame.BackgroundTransparency = 1
	closebutton.Position =  UDim2.new(0, 0, -1, 57)
end)

mini2.MouseButton1Click:Connect(function()
	up.Visible = true
	down.Visible = true
	onof.Visible = true
	plus.Visible = true
	speed.Visible = true
	mine.Visible = true
	mini.Visible = true
	mini2.Visible = false
	main.Frame.BackgroundTransparency = 0 
	closebutton.Position =  UDim2.new(0, 0, -1, 27)
end)
    end
})

Kraken:AddButton({
    Name = "Checkpoint System",
    Callback = function()
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Variables to store checkpoints
local checkpoints = {}
local checkpointCounter = 0

-- Create the main GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CheckpointGUI"
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.2, 0, 0.2, 0)
frame.Position = UDim2.new(0.1, 0, 0.1, 0)
frame.Parent = screenGui

local createCheckpointButton = Instance.new("TextButton")
createCheckpointButton.Size = UDim2.new(1, 0, 0.5, 0)
createCheckpointButton.Position = UDim2.new(0, 0, 0, 0)
createCheckpointButton.Text = "Create Checkpoint"
createCheckpointButton.Parent = frame

local openTeleportGuiButton = Instance.new("TextButton")
openTeleportGuiButton.Size = UDim2.new(1, 0, 0.5, 0)
openTeleportGuiButton.Position = UDim2.new(0, 0, 0.5, 0)
openTeleportGuiButton.Text = "Open Teleport GUI"
openTeleportGuiButton.Parent = frame

-- Create the teleport GUI
local teleportScreenGui = Instance.new("ScreenGui")
teleportScreenGui.Name = "TeleportGUI"
teleportScreenGui.Parent = player:WaitForChild("PlayerGui")
teleportScreenGui.Enabled = false

local teleportFrame = Instance.new("Frame")
teleportFrame.Size = UDim2.new(0.2, 0, 0.4, 0)
teleportFrame.Position = UDim2.new(0.7, 0, 0.1, 0)
teleportFrame.Parent = teleportScreenGui

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(1, 0, 0.1, 0)
closeButton.Position = UDim2.new(0, 0, 0, 0)
closeButton.Text = "Close"
closeButton.Parent = teleportFrame

local teleportListFrame = Instance.new("ScrollingFrame")
teleportListFrame.Size = UDim2.new(1, 0, 0.9, 0)
teleportListFrame.Position = UDim2.new(0, 0, 0.1, 0)
teleportListFrame.CanvasSize = UDim2.new(0, 0, 5, 0)
teleportListFrame.Parent = teleportFrame

-- Function to create a checkpoint
local function createCheckpoint()
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local position = humanoidRootPart.Position

    checkpointCounter = checkpointCounter + 1
    local checkpointName = "Checkpoint " .. checkpointCounter

    -- Store the checkpoint
    checkpoints[checkpointName] = position

    -- Create a button for the checkpoint in the teleport GUI
    local teleportButton = Instance.new("TextButton")
    teleportButton.Size = UDim2.new(1, 0, 0, 50)
    teleportButton.Text = checkpointName
    teleportButton.Parent = teleportListFrame

    -- Add functionality to the teleport button
    teleportButton.MouseButton1Click:Connect(function()
        humanoidRootPart.CFrame = CFrame.new(position)
    end)
end

-- Function to open the teleport GUI
local function openTeleportGui()
    teleportScreenGui.Enabled = true
end

-- Function to close the teleport GUI
local function closeTeleportGui()
    teleportScreenGui.Enabled = false
end

-- Connect the buttons to their respective functions
createCheckpointButton.MouseButton1Click:Connect(createCheckpoint)
openTeleportGuiButton.MouseButton1Click:Connect(openTeleportGui)
closeButton.MouseButton1Click:Connect(closeTeleportGui)

-- Create the credits GUI
local creditsGui = Instance.new("ScreenGui")
creditsGui.Name = "CreditsGUI"
creditsGui.DisplayOrder = 10  -- Make sure this GUI is on top
creditsGui.Parent = player:WaitForChild("PlayerGui")

local creditsFrame = Instance.new("Frame")
creditsFrame.Size = UDim2.new(0.3, 0, 0.1, 0)
creditsFrame.Position = UDim2.new(0.35, 0, 0, 0)
creditsFrame.BackgroundTransparency = 0.5
creditsFrame.Parent = creditsGui

local creditsButton = Instance.new("TextButton")
creditsButton.Size = UDim2.new(1, 0, 1, 0)
creditsButton.Text = "Credits"
creditsButton.Parent = creditsFrame

local creditsText = Instance.new("TextLabel")
creditsText.Size = UDim2.new(1, 0, 2, 0)
creditsText.Position = UDim2.new(0, 0, 1, 0)
creditsText.Text = "Developer: KrakenOfficialBG\nCheckPoint System"
creditsText.TextScaled = true
creditsText.BackgroundTransparency = 1
creditsText.Visible = false
creditsText.Parent = creditsFrame

-- Function to create a rainbow color effect
local function rainbowText(textLabel)
    local hue = 0
    while true do
        hue = hue + 0.01
        if hue > 1 then hue = 0 end
        local color = Color3.fromHSV(hue, 1, 1)
        textLabel.TextColor3 = color
        wait(0.1)
    end
end

-- Show/hide credits text
creditsButton.MouseButton1Click:Connect(function()
    creditsText.Visible = not creditsText.Visible
end)

-- Start the rainbow color effect
spawn(function()
    rainbowText(creditsText)
end)
    end
})

Kraken:AddButton({
    Name = "Admin Panel",
    Callback = function()
        loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\75\114\97\107\101\110\79\102\102\105\99\105\97\108\66\71\47\97\100\109\105\110\112\110\108\49\46\51\46\53\115\114\99\47\109\97\105\110\47\65\100\109\105\110\80\97\110\101\108\49\46\51\46\53\83\111\117\114\99\101\46\108\117\97"))()
    end
})

Kraken:AddButton({
    Name = "Rayfield GUI",
    Callback = function()
        loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\75\114\97\107\101\110\79\102\102\105\99\105\97\108\66\71\47\82\111\98\108\111\120\95\77\111\100\77\101\110\117\49\46\49\45\116\114\117\101\45\47\109\97\105\110\47\70\108\121\46\116\120\116"))()
    end
})

local Jokes = Window:MakeTab({
    Name = "Jokes",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Jokes:AddButton({
    Name = "Msg",
    Callback = function()
        while true do
		wait(8)--set this to how much time between messages
		msg = Instance.new ("Hint")
		msg.Parent = game.Workspace
		msg.Text = "Command: Lmao, GetService:HttpGetAsset(Player)"
		wait(4)
		msg:remove()
		wait(3)
		msg = Instance.new("Message")
		msg.Parent = game.Workspace
		msg.Text = "Yall ain't safe "
		wait(3)
		msg:remove()
		wait(3)
		msg = Instance.new("Message")
		msg.Parent = game.Workspace
		msg.Text = "Virus injected: Trojan Virus and Webhook"
		wait(4)
		msg:remove()
		wait(3)
		msg = Instance.new("Message")
		msg.Parent = game.Workspace
		msg.Text = "!!!!INJECTED VIRUS 0101000010101!!!"
		wait(3)
		msg:remove()
		wait(3)
		msg = Instance.new("Message")
		msg.Parent = game.Workspace
		msg.Text = "010101010011001"
		wait(4)
		msg:remove()
		wait(2)
		msg = Instance.new("Message")
		msg.Parent = game.Workspace
		msg.Text = "Robiox Department: Game is currently facing issue, restarting.. "
		wait(6)
		msg:remove()
		wait(3)
		msg = Instance.new("Message")
		msg.Parent = game.Workspace
		msg.Text = "Error, message couldn't proceed. Stringline: aOpzbJUa."
		wait(3.4)
		msg:remove()
	end
    end
})

Jokes:AddButton({
    Name = "InsaneDisco",
    Callback = function()
        while true do

		game.Lighting.Ambient = Color3.new(math.random(), math.random(), math.random())
		wait(.09)

	end
    end
})

local dareLabel
local surveyLabel
local currentQuestion = 1
local surveyActive = false

local questionsYes = {
    "Do you enjoy playing Roblox?",
    "Would you like to explore a new Roblox game?",
    "Are you competitive in Roblox games?",
    "Do you prefer building over battling in Roblox?",
    "Do you like Roblox obbies?",
    "Are you a fan of Roblox tycoon games?",
    "Do you enjoy playing with friends in Roblox?",
    "Are you good at Roblox parkour?",
    "Would you recommend Roblox to a friend?",
    "Do you prefer Roblox simulators?",
    "Do you enjoy customizing your avatar in Roblox?",
    "Are you a frequent Roblox player?",
    "Do you like experimenting with Roblox Studio?",
    "Do you usually follow Roblox trends?",
    "Would you ever create your own Roblox game?",
    "Are you a fan of Roblox roleplaying games?",
    "Do you often participate in Roblox events?",
    "Do you like challenging yourself in Roblox games?",
    "Would you ever join a Roblox tournament?",
    "Do you enjoy collecting Roblox badges?"
}

local questionsNo = {
    "Do you think Roblox needs improvements?",
    "Would you rather play a different game?",
    "Do you avoid competitive Roblox games?",
    "Do you prefer playing over building in Roblox?",
    "Are obbies not your thing?",
    "Do tycoon games bore you in Roblox?",
    "Do you mostly play solo in Roblox?",
    "Are you not a fan of Roblox parkour?",
    "Would you avoid recommending Roblox to a friend?",
    "Do you find Roblox simulators repetitive?",
    "Are you not interested in avatar customization?",
    "Do you play Roblox rarely?",
    "Do you avoid using Roblox Studio?",
    "Are you not following Roblox trends?",
    "Would you avoid creating your own Roblox game?",
    "Are roleplaying games not your style?",
    "Do you avoid Roblox events?",
    "Do you dislike challenging Roblox games?",
    "Would you avoid joining Roblox tournaments?",
    "Are Roblox badges unimportant to you?"
}

local questionsMaybe = {
    "Are you still undecided about your favorite Roblox game?",
    "Do you think Roblox could be better with some changes?",
    "Do you find some Roblox games intriguing but not compelling?",
    "Would you consider playing Roblox with friends but are unsure?",
    "Do you think about creating a Roblox game but hesitate?",
    "Are you unsure if you prefer building or playing in Roblox?",
    "Would you play a new game if recommended but are skeptical?",
    "Do you think Roblox has potential but need more convincing?",
    "Are you unsure about your favorite Roblox genre?",
    "Would you enjoy Roblox more with some adjustments?"
}

-- List of dares
local dares = {
    "Dare you to say a good joke in chat!",
    "Dare you to jump 10 times!",
    "Dare you to spin around in circles for 15 seconds!",
    "Dare you to compliment a random player!",
    "Dare you to say 'I'm the best!' in the game chat!",
    "Dare you to run around the map 2 times!",
    "Dare you to stay in one spot for 1 minute!",
    "Dare you to type 'I love Roblox!' in chat!",
    "Dare you to give someone 50 Robux (if possible)!",
    "Dare you to make a funny face in-game and screenshot it!"
}

-- AI Tab
local AI = Window:MakeTab({
    Name = "AI",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Dares Section
AI:AddSection({
    Name = "Dares AI"
})

-- Label for Dares
dareLabel = AI:AddLabel("Click 'GiveDare' for a random dare!")

-- Button to give a random dare
AI:AddButton({
    Name = "GiveDare",
    Callback = function()
        local randomDare = dares[math.random(1, #dares)]
        dareLabel:Set("Your Dare: " .. randomDare)
    end
})

-- Survey Section
AI:AddSection({
    Name = "Survey AI"
})

-- Label for Survey
surveyLabel = AI:AddLabel("Click 'Start Survey' to start the Survey")

-- Shuffle function for randomizing question order
local function shuffle(t)
    for i = #t, 2, -1 do
        local j = math.random(i)
        t[i], t[j] = t[j], t[i]
    end
    return t
end

-- Function to reset and randomize questions
local function resetQuestions()
    currentQuestion = 1
    questionsYes = shuffle(questionsYes)
    questionsNo = shuffle(questionsNo)
    questionsMaybe = shuffle(questionsMaybe)
end

-- Function to display the next question with loading effect
local function nextQuestion(response)
    if not surveyActive then return end
    surveyLabel:Set(".")
    wait(1)
    surveyLabel:Set("..")
    wait(1)
    surveyLabel:Set("...")
    wait(0.5)

    -- Load next question based on response
    if response == "Yes" and currentQuestion <= #questionsYes then
        surveyLabel:Set(questionsYes[currentQuestion])
    elseif response == "No" and currentQuestion <= #questionsNo then
        surveyLabel:Set(questionsNo[currentQuestion])
    elseif response == "Maybe" and currentQuestion <= #questionsMaybe then
        surveyLabel:Set(questionsMaybe[currentQuestion])
    else
        surveyLabel:Set("Survey completed! Click 'Restart Survey' to try again.")
        surveyActive = false
    end
    currentQuestion = currentQuestion + 1
end

-- Button to start the survey
AI:AddButton({
    Name = "Start Survey",
    Callback = function()
        resetQuestions()  -- Reset and randomize questions
        currentQuestion = 1
        surveyActive = true
        surveyLabel:Set("Loading first question...")
        wait(2)
        surveyLabel:Set(questionsYes[currentQuestion])  -- Start with the first 'Yes' question
    end
})

-- Yes button to proceed with 'Yes' related questions
AI:AddButton({
    Name = "Yes",
    Callback = function()
        nextQuestion("Yes")
    end
})

-- Maybe button to proceed with 'Maybe' related questions
AI:AddButton({
    Name = "Maybe",
    Callback = function()
        nextQuestion("Maybe")
    end
})

-- No button to proceed with 'No' related questions
AI:AddButton({
    Name = "No",
    Callback = function()
        nextQuestion("No")
    end
})

-- Button to restart the survey
AI:AddButton({
    Name = "Restart Survey",
    Callback = function()
        resetQuestions()  -- Reset and randomize questions
        surveyActive = false
        surveyLabel:Set("Click 'Start Survey' to start the Survey")
    end
})

local More = Window:MakeTab({
    Name = "More",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Paragraph
More:AddParagraph("Script Info", "This is a Universal Script")

-- Label
More:AddLabel("SoloCheatPanel Created by Solo [Jordan]")

OrionLib:Init()

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Function to create a uniform GUI background for all elements
local function createGuiBackground(parent, position, size)
    local frame = Instance.new("Frame")
    frame.Size = size
    frame.Position = position
    frame.BackgroundColor3 = Color3.new(0, 0, 0) -- Black background
    frame.BackgroundTransparency = 0.3 -- Slight transparency
    frame.BorderSizePixel = 1
    frame.BorderColor3 = Color3.new(1, 1, 1) -- White border for visibility
    frame.Parent = parent
    return frame
end

-- Create the frame for FPS and Ping
local statsFrame = createGuiBackground(screenGui, UDim2.new(0, 10, 0, 10), UDim2.new(0, 140, 0, 60))

-- Create FPS label
local fpsLabel = Instance.new("TextLabel")
fpsLabel.Size = UDim2.new(1, 0, 0.5, 0)
fpsLabel.Position = UDim2.new(0, 0, 0, 0)
fpsLabel.Text = "FPS: 0"
fpsLabel.TextColor3 = Color3.new(1, 1, 1)
fpsLabel.BackgroundTransparency = 1
fpsLabel.TextScaled = true
fpsLabel.Parent = statsFrame

-- Create Ping label
local pingLabel = Instance.new("TextLabel")
pingLabel.Size = UDim2.new(1, 0, 0.5, 0)
pingLabel.Position = UDim2.new(0, 0, 0.5, 0)
pingLabel.Text = "Ping: 0 ms"
pingLabel.TextColor3 = Color3.new(1, 1, 1)
pingLabel.BackgroundTransparency = 1
pingLabel.TextScaled = true
pingLabel.Parent = statsFrame

-- Variables to track FPS
local lastUpdateTime = tick()
local frameCount = 0

-- Function to update FPS
local function updateFPS()
    local currentTime = tick()
    frameCount = frameCount + 1

    if currentTime - lastUpdateTime >= 1 then
        fpsLabel.Text = string.format("FPS: %d", frameCount)
        lastUpdateTime = currentTime
        frameCount = 0
    end
end

-- Connect to RunService Heartbeat to update FPS
game:GetService("RunService").Heartbeat:Connect(updateFPS)

-- Update Ping using Roblox API
local function updatePing()
    local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    pingLabel.Text = string.format("Ping: %s", ping)
end

-- Update Ping every frame
game:GetService("RunService").RenderStepped:Connect(function()
    updatePing()
end)

-- Create the frame for PlayerHealth at the bottom right corner
local healthFrame = createGuiBackground(screenGui, UDim2.new(1, -150, 1, -40), UDim2.new(0, 140, 0, 30))

-- Create PlayerHealth label
local healthLabel = Instance.new("TextLabel")
healthLabel.Size = UDim2.new(1, 0, 1, 0)
healthLabel.Position = UDim2.new(0, 0, 0, 0)
healthLabel.Text = "PlayerHealth: 100"
healthLabel.TextColor3 = Color3.new(1, 1, 1)
healthLabel.BackgroundTransparency = 1
healthLabel.TextScaled = true
healthLabel.Parent = healthFrame

-- Update PlayerHealth
local function updatePlayerHealth()
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        local humanoid = player.Character.Humanoid
        healthLabel.Text = string.format("PlayerHealth: %.0f", humanoid.Health)

        humanoid.Died:Connect(function()
            healthLabel.Text = "PlayerHealth: 0"
        end)
    end
end

local function setupCharacter()
    updatePlayerHealth()
end

-- Call setupCharacter when character is added or respawned
game.Players.LocalPlayer.CharacterAdded:Connect(setupCharacter)
setupCharacter()

-- Create the frame for PlayerCount
local playerCountFrame = createGuiBackground(screenGui, UDim2.new(0, 10, 1, -80), UDim2.new(0, 140, 0, 30))

-- Create PlayerCount label
local playerCountLabel = Instance.new("TextLabel")
playerCountLabel.Size = UDim2.new(1, 0, 1, 0)
playerCountLabel.Position = UDim2.new(0, 0, 0, 0)
playerCountLabel.Text = "0/0 Players"
playerCountLabel.TextColor3 = Color3.new(1, 1, 1)
playerCountLabel.BackgroundTransparency = 1
playerCountLabel.TextScaled = true
playerCountLabel.Parent = playerCountFrame

-- Update PlayerCount
local function updatePlayerCount()
    local playerCount = #game.Players:GetPlayers()
    local maxPlayers = game:GetService("Players").MaxPlayers
    playerCountLabel.Text = string.format("%d/%d Players", playerCount, maxPlayers)
end

game.Players.PlayerAdded:Connect(updatePlayerCount)
game.Players.PlayerRemoving:Connect(updatePlayerCount)
updatePlayerCount()

-- Create the frame for Coordinates and Speed in the top right corner
local coordSpeedFrame = createGuiBackground(screenGui, UDim2.new(1, -150, 0, 10), UDim2.new(0, 140, 0, 60))

-- Create Coordinates label
local coordsLabel = Instance.new("TextLabel")
coordsLabel.Size = UDim2.new(1, 0, 0.5, 0)
coordsLabel.Position = UDim2.new(0, 0, 0, 0)
coordsLabel.Text = "Coordinates: (0, 0, 0)"
coordsLabel.TextColor3 = Color3.new(1, 1, 1)
coordsLabel.BackgroundTransparency = 1
coordsLabel.TextScaled = true
coordsLabel.Parent = coordSpeedFrame

-- Create Speed label
local speedLabel = Instance.new("TextLabel")
speedLabel.Size = UDim2.new(1, 0, 0.5, 0)
speedLabel.Position = UDim2.new(0, 0, 0.5, 0)
speedLabel.Text = "Speed: 0"
speedLabel.TextColor3 = Color3.new(1, 1, 1)
speedLabel.BackgroundTransparency = 1
speedLabel.TextScaled = true
speedLabel.Parent = coordSpeedFrame

-- Update Coordinates and Speed
local function updateCoordinatesAndSpeed()
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = player.Character.HumanoidRootPart
        local position = humanoidRootPart.Position
        coordsLabel.Text = string.format("Coordinates: (%.2f, %.2f, %.2f)", position.X, position.Y, position.Z)

        -- Update Speed
        local speed = humanoidRootPart.Velocity.Magnitude
        speedLabel.Text = string.format("Speed: %.2f", speed)
    end
end

-- Update Coordinates and Speed on Heartbeat
game:GetService("RunService").Heartbeat:Connect(updateCoordinatesAndSpeed)

-- Create the frame for Time and Game Information
local timeGameFrame = createGuiBackground(screenGui, UDim2.new(0.5, -70, 0, 10), UDim2.new(0, 140, 0, 30))

-- Create Time label
local timeLabel = Instance.new("TextLabel")
timeLabel.Size = UDim2.new(1, 0, 0.5, 0)
timeLabel.Position = UDim2.new(0, 0, 0, 0)
timeLabel.Text = "Time: 0:00"
timeLabel.TextColor3 = Color3.new(1, 1, 1)
timeLabel.BackgroundTransparency = 1
timeLabel.TextScaled = true
timeLabel.Parent = timeGameFrame

-- Create Game Name label
local gameLabel = Instance.new("TextLabel")
gameLabel.Size = UDim2.new(1, 0, 0.5, 0)
gameLabel.Position = UDim2.new(0, 0, 0.5, 0)
gameLabel.Text = "Game: " .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
gameLabel.TextColor3 = Color3.new(1, 1, 1)
gameLabel.BackgroundTransparency = 1
gameLabel.TextScaled = true
gameLabel.Parent = timeGameFrame

-- Update Time
local function updateTime()
    local currentTime = os.date("*t")
    timeLabel.Text = string.format("Time: %02d:%02d", currentTime.hour, currentTime.min)
end

-- Update Time every minute
while true do
    updateTime()
    wait(60) -- Update every minute
end

-- End of code Fr. (Helpers: Only did it solo) 