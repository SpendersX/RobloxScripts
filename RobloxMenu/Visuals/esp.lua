-- Get the Players service
local Players = game:GetService("Players")

-- Loop through all players
for _, player in ipairs(Players:GetPlayers()) do
    -- Create a new highlight instance for the player
    local highlight = Instance.new("Highlight")
    highlight.Parent = player.Character

    -- Create a new BillboardGui instance for the player's name
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Adornee = player.Character.Head
    billboardGui.Size = UDim2.new(0, 100, 0, 50)
    billboardGui.StudsOffset = Vector3.new(0, 3, 0)
    billboardGui.Parent = player.Character.Head

    -- Create a new TextLabel instance for the player's name
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Text = player.Name
    nameLabel.Size = UDim2.new(1, 0, 1, 0)
    nameLabel.TextScaled = true
    nameLabel.Parent = billboardGui
end
