function SWEP:SetupWeaponHoldTypeForAI(t)

	local owner = self:GetOwner()
	local cl = owner:GetClass()

	self.ActivityTranslateAI = {}
	
	if t == "ar2" then

		if cl == "npc_combine_s" then

			self.ActivityTranslateAI[ACT_IDLE]							= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_RELAXED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STIMULATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AGITATED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STEALTH]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_RELAXED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STIMULATED]			= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_AGITATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STEALTH]				= ACT_IDLE_ANGRY_SMG1

			self.ActivityTranslateAI[ACT_WALK]							= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_RELAXED]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_STIMULATED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AGITATED]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_STEALTH]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM]						= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_RELAXED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_STIMULATED]			= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_AGITATED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_STEALTH]				= ACT_WALK_AIM_RIFLE

			self.ActivityTranslateAI[ACT_WALK_CROUCH]					= ACT_WALK_CROUCH_RIFLE
			self.ActivityTranslateAI[ACT_WALK_CROUCH_AIM]				= ACT_WALK_CROUCH_RIFLE

			self.ActivityTranslateAI[ACT_RUN]							= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_RELAXED]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_STIMULATED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AGITATED]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_STEALTH]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM]						= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_RELAXED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_STIMULATED]			= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_AGITATED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_STEALTH]				= ACT_RUN_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RUN_CROUCH]					= ACT_RUN_CROUCH_RIFLE
			self.ActivityTranslateAI[ACT_RUN_CROUCH_AIM]				= ACT_RUN_CROUCH_RIFLE

			self.ActivityTranslateAI[ACT_RELOAD]						= ACT_RELOAD_SMG1
			self.ActivityTranslateAI[ACT_RELOAD_LOW]					= ACT_RELOAD_SMG1_LOW

			self.ActivityTranslateAI[ACT_RANGE_ATTACK1]					= ACT_RANGE_ATTACK_AR2
			self.ActivityTranslateAI[ACT_RANGE_ATTACK1_LOW]				= ACT_RANGE_ATTACK_AR2_LOW

			self.ActivityTranslateAI[ACT_COVER_LOW]						= ACT_RANGE_AIM_AR2_LOW
			self.ActivityTranslateAI[ACT_RANGE_AIM_LOW]					= ACT_RANGE_AIM_AR2_LOW
			
			self.ActivityTranslateAI[ACT_CROUCHIDLE_STIMULATED]			= ACT_RANGE_AIM_AR2_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AIM_STIMULATED]		= ACT_RANGE_AIM_AR2_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AGITATED]			= ACT_RANGE_AIM_AR2_LOW

		elseif cl == "npc_citizen" or cl == "npc_alyx" or cl == "npc_barney" or cl == "npc_monk" then

			self.ActivityTranslateAI[ACT_IDLE]							= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_RELAXED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STIMULATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AGITATED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STEALTH]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_RELAXED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STIMULATED]			= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_AGITATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STEALTH]				= ACT_IDLE_ANGRY_SMG1

			self.ActivityTranslateAI[ACT_WALK]							= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_RELAXED]					= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_STIMULATED]				= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AGITATED]					= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_STEALTH]					= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AIM]						= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AIM_RELAXED]				= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AIM_STIMULATED]			= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AIM_AGITATED]				= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AIM_STEALTH]				= ACT_WALK_AIM_RIFLE_STIMULATED

			self.ActivityTranslateAI[ACT_WALK_CROUCH]					= ACT_WALK_CROUCH_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_CROUCH_AIM]				= ACT_WALK_CROUCH_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RUN]							= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_RELAXED]					= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_STIMULATED]				= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AGITATED]					= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_STEALTH]					= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AIM]						= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AIM_RELAXED]				= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AIM_STIMULATED]			= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AIM_AGITATED]				= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AIM_STEALTH]				= ACT_RUN_AIM_RIFLE_STIMULATED

			self.ActivityTranslateAI[ACT_RUN_CROUCH]					= ACT_RUN_CROUCH_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_CROUCH_AIM]				= ACT_RUN_CROUCH_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RELOAD]						= ACT_RELOAD_SMG1
			self.ActivityTranslateAI[ACT_RELOAD_LOW]					= ACT_RELOAD_SMG1_LOW

			self.ActivityTranslateAI[ACT_RANGE_ATTACK1]					= ACT_RANGE_ATTACK_AR2
			self.ActivityTranslateAI[ACT_RANGE_ATTACK1_LOW]				= ACT_RANGE_ATTACK_SMG1_LOW

			self.ActivityTranslateAI[ACT_COVER_LOW]						= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_RANGE_AIM_LOW]					= ACT_RANGE_AIM_SMG1_LOW
			
			self.ActivityTranslateAI[ACT_CROUCHIDLE_STIMULATED]			= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AIM_STIMULATED]		= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AGITATED]			= ACT_RANGE_AIM_SMG1_LOW

		elseif cl == "npc_metropolice" then

			self.ActivityTranslateAI[ACT_IDLE]							= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_RELAXED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STIMULATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AGITATED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STEALTH]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_RELAXED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STIMULATED]			= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_AGITATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STEALTH]				= ACT_IDLE_ANGRY_SMG1

			self.ActivityTranslateAI[ACT_WALK]							= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_RELAXED]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_STIMULATED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AGITATED]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_STEALTH]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM]						= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_RELAXED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_STIMULATED]			= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_AGITATED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_STEALTH]				= ACT_WALK_AIM_RIFLE

			self.ActivityTranslateAI[ACT_WALK_CROUCH]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_CROUCH_AIM]				= ACT_WALK_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RUN]							= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_RELAXED]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_STIMULATED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AGITATED]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_STEALTH]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM]						= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_RELAXED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_STIMULATED]			= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_AGITATED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_STEALTH]				= ACT_RUN_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RUN_CROUCH]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_CROUCH_AIM]				= ACT_RUN_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RELOAD]						= ACT_RELOAD_SMG1
			self.ActivityTranslateAI[ACT_RELOAD_LOW]					= ACT_RELOAD_SMG1_LOW

			self.ActivityTranslateAI[ACT_RANGE_ATTACK1]					= ACT_RANGE_ATTACK_SMG1
			self.ActivityTranslateAI[ACT_RANGE_ATTACK1_LOW]				= ACT_RANGE_ATTACK_SMG1_LOW

			self.ActivityTranslateAI[ACT_COVER_LOW]						= ACT_COVER_SMG1_LOW
			self.ActivityTranslateAI[ACT_RANGE_AIM_LOW]					= ACT_RANGE_AIM_SMG1_LOW
			
			self.ActivityTranslateAI[ACT_CROUCHIDLE_STIMULATED]			= ACT_COVER_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AIM_STIMULATED]		= ACT_COVER_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AGITATED]			= ACT_COVER_SMG1_LOW

		end
		
	elseif t == "smg" then

		if cl == "npc_combine_s" then

			self.ActivityTranslateAI[ACT_IDLE]							= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_RELAXED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STIMULATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AGITATED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STEALTH]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_RELAXED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STIMULATED]			= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_AGITATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STEALTH]				= ACT_IDLE_ANGRY_SMG1

			self.ActivityTranslateAI[ACT_WALK]							= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_RELAXED]					= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_STIMULATED]				= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AGITATED]					= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_STEALTH]					= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AIM]						= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AIM_RELAXED]				= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AIM_STIMULATED]			= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AIM_AGITATED]				= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AIM_STEALTH]				= ACT_WALK_AIM_SHOTGUN

			self.ActivityTranslateAI[ACT_WALK_CROUCH]					= ACT_WALK_CROUCH_RIFLE
			self.ActivityTranslateAI[ACT_WALK_CROUCH_AIM]				= ACT_WALK_CROUCH_RIFLE

			self.ActivityTranslateAI[ACT_RUN]							= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_RELAXED]					= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_STIMULATED]				= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AGITATED]					= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_STEALTH]					= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AIM]						= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AIM_RELAXED]				= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AIM_STIMULATED]			= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AIM_AGITATED]				= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AIM_STEALTH]				= ACT_RUN_AIM_SHOTGUN

			self.ActivityTranslateAI[ACT_RUN_CROUCH]					= ACT_RUN_CROUCH_RIFLE
			self.ActivityTranslateAI[ACT_RUN_CROUCH_AIM]				= ACT_RUN_CROUCH_RIFLE

			self.ActivityTranslateAI[ACT_RELOAD]						= ACT_RELOAD_SMG1
			self.ActivityTranslateAI[ACT_RELOAD_LOW]					= ACT_RELOAD_SMG1_LOW

			self.ActivityTranslateAI[ACT_RANGE_ATTACK1]					= ACT_RANGE_ATTACK_SMG1
			self.ActivityTranslateAI[ACT_RANGE_ATTACK1_LOW]				= ACT_RANGE_ATTACK_SMG1_LOW

			self.ActivityTranslateAI[ACT_COVER_LOW]						= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_RANGE_AIM_LOW]					= ACT_RANGE_AIM_SMG1_LOW
			
			self.ActivityTranslateAI[ACT_CROUCHIDLE_STIMULATED]			= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AIM_STIMULATED]		= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AGITATED]			= ACT_RANGE_AIM_SMG1_LOW

		elseif cl == "npc_citizen" or cl == "npc_alyx" or cl == "npc_barney" or cl == "npc_monk" then

			self.ActivityTranslateAI[ACT_IDLE]							= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_RELAXED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STIMULATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AGITATED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STEALTH]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_RELAXED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STIMULATED]			= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_AGITATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STEALTH]				= ACT_IDLE_ANGRY_SMG1

			self.ActivityTranslateAI[ACT_WALK]							= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_RELAXED]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_STIMULATED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AGITATED]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_STEALTH]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM]						= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_RELAXED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_STIMULATED]			= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_AGITATED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_STEALTH]				= ACT_WALK_AIM_RIFLE

			self.ActivityTranslateAI[ACT_WALK_CROUCH]					= ACT_WALK_CROUCH_AIM
			self.ActivityTranslateAI[ACT_WALK_CROUCH_AIM]				= ACT_WALK_CROUCH_AIM

			self.ActivityTranslateAI[ACT_RUN]							= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_RELAXED]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_STIMULATED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AGITATED]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_STEALTH]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM]						= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_RELAXED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_STIMULATED]			= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_AGITATED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_STEALTH]				= ACT_RUN_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RUN_CROUCH]					= ACT_RUN_CROUCH_AIM
			self.ActivityTranslateAI[ACT_RUN_CROUCH_AIM]				= ACT_RUN_CROUCH_AIM

			self.ActivityTranslateAI[ACT_RELOAD]						= ACT_RELOAD_SMG1
			self.ActivityTranslateAI[ACT_RELOAD_LOW]					= ACT_RELOAD_SMG1_LOW

			self.ActivityTranslateAI[ACT_RANGE_ATTACK1]					= ACT_RANGE_ATTACK_SMG1
			self.ActivityTranslateAI[ACT_RANGE_ATTACK1_LOW]				= ACT_RANGE_ATTACK_SMG1_LOW

			self.ActivityTranslateAI[ACT_COVER_LOW]						= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_RANGE_AIM_LOW]					= ACT_RANGE_AIM_SMG1_LOW
			
			self.ActivityTranslateAI[ACT_CROUCHIDLE_STIMULATED]			= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AIM_STIMULATED]		= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AGITATED]			= ACT_RANGE_AIM_SMG1_LOW

		elseif cl == "npc_metropolice" then

			self.ActivityTranslateAI[ACT_IDLE]							= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_RELAXED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STIMULATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AGITATED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STEALTH]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_RELAXED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STIMULATED]			= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_AGITATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STEALTH]				= ACT_IDLE_ANGRY_SMG1

			self.ActivityTranslateAI[ACT_WALK]							= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_RELAXED]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_STIMULATED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AGITATED]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_STEALTH]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM]						= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_RELAXED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_STIMULATED]			= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_AGITATED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_STEALTH]				= ACT_WALK_AIM_RIFLE

			self.ActivityTranslateAI[ACT_WALK_CROUCH]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_CROUCH_AIM]				= ACT_WALK_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RUN]							= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_RELAXED]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_STIMULATED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AGITATED]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_STEALTH]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM]						= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_RELAXED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_STIMULATED]			= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_AGITATED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_STEALTH]				= ACT_RUN_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RUN_CROUCH]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_CROUCH_AIM]				= ACT_RUN_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RELOAD]						= ACT_RELOAD_SMG1
			self.ActivityTranslateAI[ACT_RELOAD_LOW]					= ACT_RELOAD_SMG1_LOW

			self.ActivityTranslateAI[ACT_RANGE_ATTACK1]					= ACT_RANGE_ATTACK_SMG1
			self.ActivityTranslateAI[ACT_RANGE_ATTACK1_LOW]				= ACT_RANGE_ATTACK_SMG1_LOW

			self.ActivityTranslateAI[ACT_COVER_LOW]						= ACT_COVER_SMG1_LOW
			self.ActivityTranslateAI[ACT_RANGE_AIM_LOW]					= ACT_RANGE_AIM_SMG1_LOW
			
			self.ActivityTranslateAI[ACT_CROUCHIDLE_STIMULATED]			= ACT_COVER_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AIM_STIMULATED]		= ACT_COVER_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AGITATED]			= ACT_COVER_SMG1_LOW

		end
		
	elseif t == "pistol" then

		if cl == "npc_combine_s" then

			self.ActivityTranslateAI[ACT_IDLE]							= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_RELAXED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STIMULATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AGITATED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STEALTH]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_RELAXED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STIMULATED]			= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_AGITATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STEALTH]				= ACT_IDLE_ANGRY_SMG1

			self.ActivityTranslateAI[ACT_WALK]							= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_RELAXED]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_STIMULATED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AGITATED]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_STEALTH]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM]						= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_RELAXED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_STIMULATED]			= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_AGITATED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_STEALTH]				= ACT_WALK_AIM_RIFLE

			self.ActivityTranslateAI[ACT_WALK_CROUCH]					= ACT_WALK_CROUCH_RIFLE
			self.ActivityTranslateAI[ACT_WALK_CROUCH_AIM]				= ACT_WALK_CROUCH_RIFLE

			self.ActivityTranslateAI[ACT_RUN]							= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_RELAXED]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_STIMULATED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AGITATED]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_STEALTH]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM]						= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_RELAXED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_STIMULATED]			= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_AGITATED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_STEALTH]				= ACT_RUN_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RUN_CROUCH]					= ACT_RUN_CROUCH_RIFLE
			self.ActivityTranslateAI[ACT_RUN_CROUCH_AIM]				= ACT_RUN_CROUCH_RIFLE

			self.ActivityTranslateAI[ACT_RELOAD]						= ACT_RELOAD_PISTOL
			self.ActivityTranslateAI[ACT_RELOAD_LOW]					= ACT_RELOAD_PISTOL_LOW

			self.ActivityTranslateAI[ACT_RANGE_ATTACK1]					= ACT_RANGE_ATTACK_AR2
			self.ActivityTranslateAI[ACT_RANGE_ATTACK1_LOW]				= ACT_RANGE_ATTACK_AR2_LOW

			self.ActivityTranslateAI[ACT_COVER_LOW]						= ACT_RANGE_AIM_AR2_LOW
			self.ActivityTranslateAI[ACT_RANGE_AIM_LOW]					= ACT_RANGE_AIM_AR2_LOW
			
			self.ActivityTranslateAI[ACT_CROUCHIDLE_STIMULATED]			= ACT_RANGE_AIM_AR2_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AIM_STIMULATED]		= ACT_RANGE_AIM_AR2_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AGITATED]			= ACT_RANGE_AIM_AR2_LOW
			
		elseif (cl == "npc_citizen" and string.find(owner:GetModel(), "female")) or cl == "npc_alyx" then

			self.ActivityTranslateAI[ACT_IDLE]							= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_RELAXED]					= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_STIMULATED]				= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_AGITATED]					= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_STEALTH]					= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_AIM_RELAXED]				= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_AIM_STIMULATED]			= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_AIM_AGITATED]				= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_AIM_STEALTH]				= ACT_IDLE_ANGRY_PISTOL

			self.ActivityTranslateAI[ACT_WALK]							= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_RELAXED]					= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_STIMULATED]				= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AGITATED]					= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_STEALTH]					= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AIM]						= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AIM_RELAXED]				= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AIM_STIMULATED]			= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AIM_AGITATED]				= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AIM_STEALTH]				= ACT_WALK_AIM_PISTOL

			self.ActivityTranslateAI[ACT_WALK_CROUCH]					= ACT_WALK_CROUCH_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_CROUCH_AIM]				= ACT_WALK_CROUCH_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RUN]							= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_RELAXED]					= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_STIMULATED]				= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AGITATED]					= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_STEALTH]					= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AIM]						= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AIM_RELAXED]				= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AIM_STIMULATED]			= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AIM_AGITATED]				= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AIM_STEALTH]				= ACT_RUN_AIM_PISTOL

			self.ActivityTranslateAI[ACT_RUN_CROUCH]					= ACT_RUN_CROUCH_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_CROUCH_AIM]				= ACT_RUN_CROUCH_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RELOAD]						= ACT_RELOAD_PISTOL
			self.ActivityTranslateAI[ACT_RELOAD_LOW]					= ACT_RELOAD_SMG1_LOW

			self.ActivityTranslateAI[ACT_RANGE_ATTACK1]					= ACT_RANGE_ATTACK_PISTOL
			self.ActivityTranslateAI[ACT_RANGE_ATTACK1_LOW]				= ACT_RANGE_ATTACK_SMG1_LOW

			self.ActivityTranslateAI[ACT_COVER_LOW]						= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_RANGE_AIM_LOW]					= ACT_RANGE_AIM_SMG1_LOW
			
			self.ActivityTranslateAI[ACT_CROUCHIDLE_STIMULATED]			= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AIM_STIMULATED]		= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AGITATED]			= ACT_RANGE_AIM_SMG1_LOW

		elseif cl == "npc_citizen" or cl == "npc_barney" or cl == "npc_monk" then

			self.ActivityTranslateAI[ACT_IDLE]							= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_RELAXED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STIMULATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AGITATED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STEALTH]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_RELAXED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STIMULATED]			= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_AGITATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STEALTH]				= ACT_IDLE_ANGRY_SMG1

			self.ActivityTranslateAI[ACT_WALK]							= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_RELAXED]					= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_STIMULATED]				= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AGITATED]					= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_STEALTH]					= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AIM]						= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AIM_RELAXED]				= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AIM_STIMULATED]			= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AIM_AGITATED]				= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AIM_STEALTH]				= ACT_WALK_AIM_RIFLE_STIMULATED

			self.ActivityTranslateAI[ACT_WALK_CROUCH]					= ACT_WALK_CROUCH_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_CROUCH_AIM]				= ACT_WALK_CROUCH_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RUN]							= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_RELAXED]					= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_STIMULATED]				= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AGITATED]					= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_STEALTH]					= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AIM]						= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AIM_RELAXED]				= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AIM_STIMULATED]			= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AIM_AGITATED]				= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AIM_STEALTH]				= ACT_RUN_AIM_RIFLE_STIMULATED

			self.ActivityTranslateAI[ACT_RUN_CROUCH]					= ACT_RUN_CROUCH_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_CROUCH_AIM]				= ACT_RUN_CROUCH_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RELOAD]						= ACT_RELOAD_PISTOL
			self.ActivityTranslateAI[ACT_RELOAD_LOW]					= ACT_RELOAD_PISTOL_LOW

			self.ActivityTranslateAI[ACT_RANGE_ATTACK1]					= ACT_RANGE_ATTACK_PISTOL
			self.ActivityTranslateAI[ACT_RANGE_ATTACK1_LOW]				= ACT_RANGE_ATTACK_PISTOL_LOW

			self.ActivityTranslateAI[ACT_COVER_LOW]						= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_RANGE_AIM_LOW]					= ACT_RANGE_AIM_SMG1_LOW
			
			self.ActivityTranslateAI[ACT_CROUCHIDLE_STIMULATED]			= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AIM_STIMULATED]		= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AGITATED]			= ACT_RANGE_AIM_SMG1_LOW

		elseif cl == "npc_metropolice" then

			self.ActivityTranslateAI[ACT_IDLE]							= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_RELAXED]					= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_STIMULATED]				= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_AGITATED]					= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_STEALTH]					= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_AIM_RELAXED]				= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_AIM_STIMULATED]			= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_AIM_AGITATED]				= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_AIM_STEALTH]				= ACT_IDLE_ANGRY_PISTOL

			self.ActivityTranslateAI[ACT_WALK]							= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_RELAXED]					= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_STIMULATED]				= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AGITATED]					= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_STEALTH]					= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AIM]						= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AIM_RELAXED]				= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AIM_STIMULATED]			= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AIM_AGITATED]				= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AIM_STEALTH]				= ACT_WALK_AIM_PISTOL

			self.ActivityTranslateAI[ACT_WALK_CROUCH]					= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_CROUCH_AIM]				= ACT_WALK_AIM_PISTOL

			self.ActivityTranslateAI[ACT_RUN]							= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_RELAXED]					= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_STIMULATED]				= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AGITATED]					= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_STEALTH]					= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AIM]						= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AIM_RELAXED]				= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AIM_STIMULATED]			= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AIM_AGITATED]				= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AIM_STEALTH]				= ACT_RUN_AIM_PISTOL

			self.ActivityTranslateAI[ACT_RUN_CROUCH]					= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_CROUCH_AIM]				= ACT_RUN_AIM_PISTOL

			self.ActivityTranslateAI[ACT_RELOAD]						= ACT_RELOAD_PISTOL
			self.ActivityTranslateAI[ACT_RELOAD_LOW]					= ACT_RELOAD_PISTOL_LOW

			self.ActivityTranslateAI[ACT_RANGE_ATTACK1]					= ACT_RANGE_ATTACK_PISTOL
			self.ActivityTranslateAI[ACT_RANGE_ATTACK1_LOW]				= ACT_RANGE_ATTACK_PISTOL_LOW

			self.ActivityTranslateAI[ACT_COVER_LOW]						= ACT_COVER_PISTOL_LOW
			self.ActivityTranslateAI[ACT_RANGE_AIM_LOW]					= ACT_RANGE_AIM_PISTOL_LOW
			
			self.ActivityTranslateAI[ACT_CROUCHIDLE_STIMULATED]			= ACT_RANGE_AIM_PISTOL_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AIM_STIMULATED]		= ACT_RANGE_AIM_PISTOL_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AGITATED]			= ACT_RANGE_AIM_PISTOL_LOW

		end

	elseif t == "shotgun" then

		if cl == "npc_combine_s" then

			self.ActivityTranslateAI[ACT_IDLE]							= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_RELAXED]					= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_STIMULATED]				= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_AGITATED]					= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_STEALTH]					= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_AIM_RELAXED]				= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_AIM_STIMULATED]			= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_AIM_AGITATED]				= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_AIM_STEALTH]				= ACT_IDLE_ANGRY_SHOTGUN

			self.ActivityTranslateAI[ACT_WALK]							= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_RELAXED]					= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_STIMULATED]				= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AGITATED]					= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_STEALTH]					= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AIM]						= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AIM_RELAXED]				= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AIM_STIMULATED]			= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AIM_AGITATED]				= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AIM_STEALTH]				= ACT_WALK_AIM_SHOTGUN

			self.ActivityTranslateAI[ACT_WALK_CROUCH]					= ACT_WALK_CROUCH_RIFLE
			self.ActivityTranslateAI[ACT_WALK_CROUCH_AIM]				= ACT_WALK_CROUCH_RIFLE

			self.ActivityTranslateAI[ACT_RUN]							= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_RELAXED]					= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_STIMULATED]				= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AGITATED]					= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_STEALTH]					= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AIM]						= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AIM_RELAXED]				= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AIM_STIMULATED]			= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AIM_AGITATED]				= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AIM_STEALTH]				= ACT_RUN_AIM_SHOTGUN

			self.ActivityTranslateAI[ACT_RUN_CROUCH]					= ACT_RUN_CROUCH_RIFLE
			self.ActivityTranslateAI[ACT_RUN_CROUCH_AIM]				= ACT_RUN_CROUCH_RIFLE

			self.ActivityTranslateAI[ACT_RELOAD]						= ACT_RELOAD_SHOTGUN
			self.ActivityTranslateAI[ACT_RELOAD_LOW]					= ACT_RELOAD_SHOTGUN_LOW

			self.ActivityTranslateAI[ACT_RANGE_ATTACK1]					= ACT_RANGE_ATTACK_SHOTGUN
			self.ActivityTranslateAI[ACT_RANGE_ATTACK1_LOW]				= ACT_RANGE_ATTACK_SHOTGUN_LOW

			self.ActivityTranslateAI[ACT_COVER_LOW]						= ACT_RANGE_AIM_AR2_LOW
			self.ActivityTranslateAI[ACT_RANGE_AIM_LOW]					= ACT_RANGE_AIM_AR2_LOW
			
			self.ActivityTranslateAI[ACT_CROUCHIDLE_STIMULATED]			= ACT_RANGE_AIM_AR2_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AIM_STIMULATED]		= ACT_RANGE_AIM_AR2_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AGITATED]			= ACT_RANGE_AIM_AR2_LOW

		elseif cl == "npc_citizen" or cl == "npc_alyx" or cl == "npc_monk" then

			self.ActivityTranslateAI[ACT_IDLE]							= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_RELAXED]					= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_STIMULATED]				= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_AGITATED]					= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_STEALTH]					= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_AIM_RELAXED]				= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_AIM_STIMULATED]			= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_AIM_AGITATED]				= ACT_IDLE_ANGRY_SHOTGUN
			self.ActivityTranslateAI[ACT_IDLE_AIM_STEALTH]				= ACT_IDLE_ANGRY_SHOTGUN

			self.ActivityTranslateAI[ACT_WALK]							= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_RELAXED]					= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_STIMULATED]				= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AGITATED]					= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_STEALTH]					= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AIM]						= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AIM_RELAXED]				= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AIM_STIMULATED]			= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AIM_AGITATED]				= ACT_WALK_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_WALK_AIM_STEALTH]				= ACT_WALK_AIM_SHOTGUN

			self.ActivityTranslateAI[ACT_WALK_CROUCH]					= ACT_WALK_CROUCH_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_CROUCH_AIM]				= ACT_WALK_CROUCH_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RUN]							= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_RELAXED]					= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_STIMULATED]				= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AGITATED]					= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_STEALTH]					= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AIM]						= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AIM_RELAXED]				= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AIM_STIMULATED]			= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AIM_AGITATED]				= ACT_RUN_AIM_SHOTGUN
			self.ActivityTranslateAI[ACT_RUN_AIM_STEALTH]				= ACT_RUN_AIM_SHOTGUN

			self.ActivityTranslateAI[ACT_RUN_CROUCH]					= ACT_RUN_CROUCH_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_CROUCH_AIM]				= ACT_RUN_CROUCH_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RELOAD]						= ACT_RELOAD_SHOTGUN
			self.ActivityTranslateAI[ACT_RELOAD_LOW]					= ACT_RELOAD_SMG1_LOW

			self.ActivityTranslateAI[ACT_RANGE_ATTACK1]					= ACT_RANGE_ATTACK_SHOTGUN
			self.ActivityTranslateAI[ACT_RANGE_ATTACK1_LOW]				= ACT_RANGE_ATTACK_SHOTGUN_LOW

			self.ActivityTranslateAI[ACT_COVER_LOW]						= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_RANGE_AIM_LOW]					= ACT_RANGE_AIM_SMG1_LOW
			
			self.ActivityTranslateAI[ACT_CROUCHIDLE_STIMULATED]			= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AIM_STIMULATED]		= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AGITATED]			= ACT_RANGE_AIM_SMG1_LOW

		elseif cl == "npc_barney" then

			self.ActivityTranslateAI[ACT_IDLE]							= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_RELAXED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STIMULATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AGITATED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STEALTH]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_RELAXED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STIMULATED]			= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_AGITATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STEALTH]				= ACT_IDLE_ANGRY_SMG1

			self.ActivityTranslateAI[ACT_WALK]							= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_RELAXED]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_STIMULATED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AGITATED]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_STEALTH]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM]						= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_RELAXED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_STIMULATED]			= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_AGITATED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_STEALTH]				= ACT_WALK_AIM_RIFLE

			self.ActivityTranslateAI[ACT_WALK_CROUCH]					= ACT_WALK_CROUCH_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_CROUCH_AIM]				= ACT_WALK_CROUCH_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RUN]							= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_RELAXED]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_STIMULATED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AGITATED]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_STEALTH]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM]						= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_RELAXED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_STIMULATED]			= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_AGITATED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_STEALTH]				= ACT_RUN_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RUN_CROUCH]					= ACT_RUN_CROUCH_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_CROUCH_AIM]				= ACT_RUN_CROUCH_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RELOAD]						= ACT_RELOAD_SHOTGUN
			self.ActivityTranslateAI[ACT_RELOAD_LOW]					= ACT_RELOAD_SMG1_LOW

			self.ActivityTranslateAI[ACT_RANGE_ATTACK1]					= ACT_RANGE_ATTACK_SHOTGUN
			self.ActivityTranslateAI[ACT_RANGE_ATTACK1_LOW]				= ACT_RANGE_ATTACK_SMG1_LOW

			self.ActivityTranslateAI[ACT_COVER_LOW]						= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_RANGE_AIM_LOW]					= ACT_RANGE_AIM_SMG1_LOW
			
			self.ActivityTranslateAI[ACT_CROUCHIDLE_STIMULATED]			= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AIM_STIMULATED]		= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AGITATED]			= ACT_RANGE_AIM_SMG1_LOW
		
		elseif cl == "npc_metropolice" then

			self.ActivityTranslateAI[ACT_IDLE]							= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_RELAXED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STIMULATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AGITATED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STEALTH]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_RELAXED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STIMULATED]			= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_AGITATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STEALTH]				= ACT_IDLE_ANGRY_SMG1

			self.ActivityTranslateAI[ACT_WALK]							= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_RELAXED]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_STIMULATED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AGITATED]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_STEALTH]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM]						= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_RELAXED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_STIMULATED]			= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_AGITATED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_STEALTH]				= ACT_WALK_AIM_RIFLE

			self.ActivityTranslateAI[ACT_WALK_CROUCH]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_CROUCH_AIM]				= ACT_WALK_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RUN]							= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_RELAXED]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_STIMULATED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AGITATED]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_STEALTH]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM]						= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_RELAXED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_STIMULATED]			= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_AGITATED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_STEALTH]				= ACT_RUN_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RUN_CROUCH]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_CROUCH_AIM]				= ACT_RUN_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RELOAD]						= ACT_RELOAD_SMG1
			self.ActivityTranslateAI[ACT_RELOAD_LOW]					= ACT_RELOAD_SMG1_LOW

			self.ActivityTranslateAI[ACT_RANGE_ATTACK1]					= ACT_RANGE_ATTACK_SMG1
			self.ActivityTranslateAI[ACT_RANGE_ATTACK1_LOW]				= ACT_RANGE_ATTACK_SMG1_LOW

			self.ActivityTranslateAI[ACT_COVER_LOW]						= ACT_COVER_SMG1_LOW
			self.ActivityTranslateAI[ACT_RANGE_AIM_LOW]					= ACT_RANGE_AIM_SMG1_LOW
			
			self.ActivityTranslateAI[ACT_CROUCHIDLE_STIMULATED]			= ACT_COVER_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AIM_STIMULATED]		= ACT_COVER_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AGITATED]			= ACT_COVER_SMG1_LOW

		end
		
	elseif t == "rpg" then

		if cl == "npc_combine_s" then

			self.ActivityTranslateAI[ACT_IDLE]							= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_RELAXED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STIMULATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AGITATED]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_STEALTH]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_RELAXED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STIMULATED]			= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_AGITATED]				= ACT_IDLE_ANGRY_SMG1
			self.ActivityTranslateAI[ACT_IDLE_AIM_STEALTH]				= ACT_IDLE_ANGRY_SMG1

			self.ActivityTranslateAI[ACT_WALK]							= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_RELAXED]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_STIMULATED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AGITATED]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_STEALTH]					= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM]						= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_RELAXED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_STIMULATED]			= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_AGITATED]				= ACT_WALK_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_AIM_STEALTH]				= ACT_WALK_AIM_RIFLE

			self.ActivityTranslateAI[ACT_WALK_CROUCH]					= ACT_WALK_CROUCH_RIFLE
			self.ActivityTranslateAI[ACT_WALK_CROUCH_AIM]				= ACT_WALK_CROUCH_RIFLE

			self.ActivityTranslateAI[ACT_RUN]							= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_RELAXED]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_STIMULATED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AGITATED]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_STEALTH]					= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM]						= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_RELAXED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_STIMULATED]			= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_AGITATED]				= ACT_RUN_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_AIM_STEALTH]				= ACT_RUN_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RUN_CROUCH]					= ACT_RUN_CROUCH_RIFLE
			self.ActivityTranslateAI[ACT_RUN_CROUCH_AIM]				= ACT_RUN_CROUCH_RIFLE

			self.ActivityTranslateAI[ACT_RELOAD]						= ACT_RELOAD_SMG1
			self.ActivityTranslateAI[ACT_RELOAD_LOW]					= ACT_RELOAD_SMG1_LOW

			self.ActivityTranslateAI[ACT_RANGE_ATTACK1]					= ACT_RANGE_ATTACK_AR2
			self.ActivityTranslateAI[ACT_RANGE_ATTACK1_LOW]				= ACT_RANGE_ATTACK_AR2_LOW

			self.ActivityTranslateAI[ACT_COVER_LOW]						= ACT_RANGE_AIM_AR2_LOW
			self.ActivityTranslateAI[ACT_RANGE_AIM_LOW]					= ACT_RANGE_AIM_AR2_LOW
			
			self.ActivityTranslateAI[ACT_CROUCHIDLE_STIMULATED]			= ACT_RANGE_AIM_AR2_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AIM_STIMULATED]		= ACT_RANGE_AIM_AR2_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AGITATED]			= ACT_RANGE_AIM_AR2_LOW

		elseif cl == "npc_citizen" or cl == "npc_alyx" or cl == "npc_barney" or cl == "npc_monk" then

			self.ActivityTranslateAI[ACT_IDLE]							= ACT_IDLE_ANGRY_RPG
			self.ActivityTranslateAI[ACT_IDLE_RELAXED]					= ACT_IDLE_ANGRY_RPG
			self.ActivityTranslateAI[ACT_IDLE_STIMULATED]				= ACT_IDLE_ANGRY_RPG
			self.ActivityTranslateAI[ACT_IDLE_AGITATED]					= ACT_IDLE_ANGRY_RPG
			self.ActivityTranslateAI[ACT_IDLE_STEALTH]					= ACT_IDLE_ANGRY_RPG
			self.ActivityTranslateAI[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_RPG
			self.ActivityTranslateAI[ACT_IDLE_AIM_RELAXED]				= ACT_IDLE_ANGRY_RPG
			self.ActivityTranslateAI[ACT_IDLE_AIM_STIMULATED]			= ACT_IDLE_ANGRY_RPG
			self.ActivityTranslateAI[ACT_IDLE_AIM_AGITATED]				= ACT_IDLE_ANGRY_RPG
			self.ActivityTranslateAI[ACT_IDLE_AIM_STEALTH]				= ACT_IDLE_ANGRY_RPG

			self.ActivityTranslateAI[ACT_WALK]							= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_RELAXED]					= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_STIMULATED]				= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AGITATED]					= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_STEALTH]					= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AIM]						= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AIM_RELAXED]				= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AIM_STIMULATED]			= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AIM_AGITATED]				= ACT_WALK_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_WALK_AIM_STEALTH]				= ACT_WALK_AIM_RIFLE_STIMULATED

			self.ActivityTranslateAI[ACT_WALK_CROUCH]					= ACT_WALK_CROUCH_AIM_RIFLE
			self.ActivityTranslateAI[ACT_WALK_CROUCH_AIM]				= ACT_WALK_CROUCH_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RUN]							= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_RELAXED]					= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_STIMULATED]				= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AGITATED]					= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_STEALTH]					= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AIM]						= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AIM_RELAXED]				= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AIM_STIMULATED]			= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AIM_AGITATED]				= ACT_RUN_AIM_RIFLE_STIMULATED
			self.ActivityTranslateAI[ACT_RUN_AIM_STEALTH]				= ACT_RUN_AIM_RIFLE_STIMULATED

			self.ActivityTranslateAI[ACT_RUN_CROUCH]					= ACT_RUN_CROUCH_AIM_RIFLE
			self.ActivityTranslateAI[ACT_RUN_CROUCH_AIM]				= ACT_RUN_CROUCH_AIM_RIFLE

			self.ActivityTranslateAI[ACT_RELOAD]						= ACT_RELOAD_SMG1
			self.ActivityTranslateAI[ACT_RELOAD_LOW]					= ACT_RELOAD_SMG1_LOW

			self.ActivityTranslateAI[ACT_RANGE_ATTACK1]					= ACT_RANGE_ATTACK_RPG
			self.ActivityTranslateAI[ACT_RANGE_ATTACK1_LOW]				= ACT_RANGE_ATTACK_SMG1_LOW

			self.ActivityTranslateAI[ACT_COVER_LOW]						= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_RANGE_AIM_LOW]					= ACT_RANGE_AIM_SMG1_LOW
			
			self.ActivityTranslateAI[ACT_CROUCHIDLE_STIMULATED]			= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AIM_STIMULATED]		= ACT_RANGE_AIM_SMG1_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AGITATED]			= ACT_RANGE_AIM_SMG1_LOW

		elseif cl == "npc_metropolice" then

			self.ActivityTranslateAI[ACT_IDLE]							= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_RELAXED]					= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_STIMULATED]				= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_AGITATED]					= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_STEALTH]					= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_ANGRY]					= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_AIM_RELAXED]				= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_AIM_STIMULATED]			= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_AIM_AGITATED]				= ACT_IDLE_ANGRY_PISTOL
			self.ActivityTranslateAI[ACT_IDLE_AIM_STEALTH]				= ACT_IDLE_ANGRY_PISTOL

			self.ActivityTranslateAI[ACT_WALK]							= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_RELAXED]					= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_STIMULATED]				= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AGITATED]					= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_STEALTH]					= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AIM]						= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AIM_RELAXED]				= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AIM_STIMULATED]			= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AIM_AGITATED]				= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_AIM_STEALTH]				= ACT_WALK_AIM_PISTOL

			self.ActivityTranslateAI[ACT_WALK_CROUCH]					= ACT_WALK_AIM_PISTOL
			self.ActivityTranslateAI[ACT_WALK_CROUCH_AIM]				= ACT_WALK_AIM_PISTOL

			self.ActivityTranslateAI[ACT_RUN]							= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_RELAXED]					= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_STIMULATED]				= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AGITATED]					= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_STEALTH]					= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AIM]						= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AIM_RELAXED]				= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AIM_STIMULATED]			= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AIM_AGITATED]				= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_AIM_STEALTH]				= ACT_RUN_AIM_PISTOL

			self.ActivityTranslateAI[ACT_RUN_CROUCH]					= ACT_RUN_AIM_PISTOL
			self.ActivityTranslateAI[ACT_RUN_CROUCH_AIM]				= ACT_RUN_AIM_PISTOL

			self.ActivityTranslateAI[ACT_RELOAD]						= ACT_RELOAD_SMG1
			self.ActivityTranslateAI[ACT_RELOAD_LOW]					= ACT_RELOAD_SMG1_LOW

			self.ActivityTranslateAI[ACT_RANGE_ATTACK1]					= ACT_RANGE_ATTACK_PISTOL
			self.ActivityTranslateAI[ACT_RANGE_ATTACK1_LOW]				= ACT_RANGE_ATTACK_PISTOL_LOW

			self.ActivityTranslateAI[ACT_COVER_LOW]						= ACT_COVER_PISTOL_LOW
			self.ActivityTranslateAI[ACT_RANGE_AIM_LOW]					= ACT_RANGE_AIM_PISTOL_LOW
			
			self.ActivityTranslateAI[ACT_CROUCHIDLE_STIMULATED]			= ACT_RANGE_AIM_PISTOL_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AIM_STIMULATED]		= ACT_RANGE_AIM_PISTOL_LOW
			self.ActivityTranslateAI[ACT_CROUCHIDLE_AGITATED]			= ACT_RANGE_AIM_PISTOL_LOW

		end
		
	end
	
end