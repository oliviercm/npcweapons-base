hook.Add("PopulateToolMenu", "NPC Weapons Options", function()
	
	spawnmenu.AddToolMenuOption("Options", "NPC Weapons", "NPC Weapons Options", "Options", "", "", function(dform)
	
        dform:NumSlider("Damage Multiplier", "npc_weapons_damage_mult", 0.01, 2, 2)
        dform:ControlHelp("Damage Multiplier: NPC Weapon damage will be multiplied by this number.")
        
        dform:CheckBox("Force Animations", "npc_weapons_force_animations")
        dform:ControlHelp("Force Animations: Force NPCs to use the right animations even if they don't support them by default. This will NOT work without an addon that replaces NPC animations, and even then it might not work perfectly if the addon doesn't replace the right animations.")
		
	end)
	
end)