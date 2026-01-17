local prompt = script.Parent:WaitForChild("ProximityPrompt")
local tool_vagetable = game.ServerStorage:WaitForChild("_vagetable")

prompt.Triggered:Connect(function(player) 
	if player.Character and not player.Backpack:FindFirstChild(tool_vagetable.Name) 
		and not player.Character:FindFirstChild(tool_vagetable.Name) then
		
		local tool = tool_vagetable:Clone()
		player.Character.Humanoid:EquipTool(tool)
	
	end
end)
