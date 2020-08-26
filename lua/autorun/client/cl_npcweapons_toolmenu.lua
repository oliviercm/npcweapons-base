hook.Add("PopulateToolMenu", "NPC Weapons Options", function()
	
	spawnmenu.AddToolMenuOption("Options", "NPC Weapons", "NPC Weapons Options", "Options", "", "", function(panel)
	
		panel:AddControl("Label", {
			Text = "Damage Multiplier: NPC Weapon damage will be multiplied by this number."
		})
		panel:AddControl("Slider", {
			Label = "Damage Multiplier",
			Command = "npc_weapons_damage_mult",
			Type = "float",
			Min = "0.01",
			Max = "2",
		})
		
	end)
	
end)