--////////////////
--////Author: xyzzy
--////////////////////////////////////////////////////////////////////////////////
--////This is the base for my NPC weapons.
--////Do not re-upload any part of this addon without my permission.
--////The main content pack using this base is here: https://steamcommunity.com/sharedfiles/filedetails/?id=632126535
--////////////////////////////////////////////////////////////////////////////////

SWEP.PrintName					= "NPC Weapon Base"
SWEP.Author						= "xyzzy"
SWEP.Contact					= "http://steamcommunity.com/id/theRealXyzzy/"
SWEP.Category					= "NPC Weapons"
SWEP.IsNPCWeapon				= true

SWEP.WorldModel					= "models/weapons/w_pistol.mdl" --What model should we use as the world model?
SWEP.ClientModel				= nil --Structure used to render clientside models. The world model is not drawn if a client model exists. { model : String, pos : Vector, angle : Angle, size : Vector, color : Color, skin : Number, bodygroup : Table, bone : String }
SWEP.HoldType					= "pistol" --Which animation set should we use? "pistol": Hold like a pistol. Note that only half of the HL2 NPCs have pistol animations, the other ones will hold it like an SMG. "smg": Hold like an SMG, close to the hip while running. The offhand holds a vertical grip. "ar2": Hold like a rifle, high and at shoulder level. The offhand lays flat (when the NPC has animations for it). "shotgun": Hold low to the hip. Note that reloads will play a shotgun cocking sound if the holder is a female npc_citizen. "rpg": Hold high and on top of the shoulder.

SWEP.MuzzleAttachment			= "1" --Where the muzzleflash and bullet should come out of on the weapon. Most models have this as 1 or "muzzle".
SWEP.ShellAttachment			= "2" --Where the bullet casing should come out of on the weapon. Most models have this as 2.
SWEP.MuzzleEffect    			= "MuzzleEffect" --Which effect to use as the muzzleflash.
SWEP.ShellEffect				= "ShellEject" --Which effect to use as the bullet casing.
SWEP.TracerEffect				= "Tracer" --Which effect to use as the bullet tracer.
SWEP.ReloadSounds				= nil --Which sounds should we play when the gun is being reloaded? Should be a table of tables of {delay, sound}, eg. {{0, "ak47_clipout"}, {0.8, "ak47_clipin"}}
SWEP.TracerX					= 1 --For every X bullets, show the tracer effect.
SWEP.EnableTracerEffect    		= true --Enable tracer?
SWEP.EnableMuzzleEffect    		= true --Enable muzzleflash?
SWEP.EnableShellEffect    		= true --Enable shell casings?

SWEP.ReloadTime					= 0 --How long should reloads last in seconds? NPCs will not be able to fire for this much time after starting a reload.
SWEP.Primary.DamageMin			= 0 --How much minimum damage each bullet should do. Rule of thumb is average damage should be around 4-8 for small caliber weapons like pistols, 8-12 for medium caliber weapons like rifles, and 15+ for large caliber weapons like sniper rifles.
SWEP.Primary.DamageMax			= 0 --How much maximum damage each bullet should do. Rule of thumb is average damage should be around 4-8 for small caliber weapons like pistols, 8-12 for medium caliber weapons like rifles, and 15+ for large caliber weapons like sniper rifles.
SWEP.Primary.MinDropoffDistance = 0 --The minimum distance before damage begins to drop off.
SWEP.Primary.MaxDropoffDistance = 1 --The maximum distance before damage drops off to the minimum damage.
SWEP.Primary.MaxDropoffFactor   = 0.2 --The factor to multiply damage by when distance is equal to or more than the max dropoff distance.
SWEP.Primary.Force				= 0 --How much force each bullet should do. Rule of thumb is set this as the average damage, but it should stay between 5 - 15. You usually don't want to go outside that range, otherwise bodies get thrown too soft/hard.
SWEP.Primary.Spread				= 0 --How inaccurate the weapon should be. Examples: AWP - 0.003, M4A1 - 0.030, MAC10 - 0.060
SWEP.Primary.SpreadMoveMult		= 0 --How much should we multiply the spread if the NPC is moving? Higher values mean the weapon is more inaccurate while moving. Rule of thumb is 1.2 for rifles, 1.1 for pistols, 1 for SMGs, 1.3-1.5 for MGs, and 5+ for sniper rifles.
SWEP.Primary.BurstMinShots		= 0 --How many times should we shoot in every burst, at minimum?
SWEP.Primary.BurstMaxShots		= 0 --How many times should we shoot in every burst, at maximum?
SWEP.Primary.BurstMinDelay		= 0 --How much extra time should we wait between bursts, at minimum?
SWEP.Primary.BurstMaxDelay		= 0 --How much extra time should we wait between bursts, at maximum?
SWEP.Primary.BurstCancellable	= true --Do bursts have to fire the full burst, or can they stop early?
SWEP.Primary.FireDelay			= 0 --How much time should there be between each shot?
SWEP.Primary.NumBullets			= 0 --How many bullets should there be for each shot? Most weapons would have this as 1, but shotguns would have a different value, like 8 or 9.
SWEP.Primary.ClipSize			= 0 --How many shots should we get per reload?
SWEP.Primary.DefaultClip		= 0 --How many shots should the weapon spawn with in the magazine? Usually you want this the same as SWEP.Primary.ClipSize.
SWEP.Primary.AimDelayMin		= 0 --How long should we wait before shooting a new enemy, at minimum?
SWEP.Primary.AimDelayMax		= 0 --How long should we wait before shooting a new enemy, at maximum?
SWEP.Primary.Sound				= "weapons/pistol/pistol_fire2.wav" --What sound should we play when the gun fires?
SWEP.Primary.Ammo				= "pistol" --The ammo type of the weapon. This doesn't do anything at the moment, but if picking up these guns is ever implemented then this is the ammo type that you would get.
SWEP.Primary.InfiniteAmmo		= false --Should we never have to reload?

SWEP.ForceWalking				= false --Should NPCs be forced to walk when shooting this weapon?
SWEP.ForceWalkingTime			= 0 --How long to force NPCs to walk after shooting.

SWEP.LastEnemy					= nil --This value is used to store the owners last enemy, don't touch it.
SWEP.LastActivity				= nil --This value is used to store the owners last activity, don't touch it.
SWEP.LastTargetPos				= nil --This value is used to store the last shot position, don't touch it.

SWEP.AimForHeadTable			= { --Which NPC classes to use NPC.HeadTarget() instead of NPC.BodyTarget() on. You probably shouldn't change this.
	npc_combine_s = true,
	npc_citizen = true,
	npc_alyx = true,
	npc_barney = true,
	npc_monk = true,
	npc_eli = true,
	npc_kleiner = true,
	npc_magnusson = true,
	npc_mossman = true,
	npc_breen = true,
	npc_metropolice = true,
	npc_zombie = true,
	npc_zombine = true,
}

function SWEP:Initialize()
	
	self:SetHoldType(self.HoldType)
	
	if SERVER then
	
		self:Think()
		
	end

	if CLIENT and self.ClientModel then

		self:CreateClientModel()
			
	end

end

function SWEP:Equip(owner)

	local ownerClass = owner:GetClass()
	if owner:IsPlayer() or ownerClass == "npc_vortigaunt" then

		self:Remove()

	end

end

function SWEP:PrimaryFire()

	local currentEnemy = self.LastEnemy
	local fireDelay = self.Primary.FireDelay
	local burstCount = math.random(self.Primary.BurstMinShots, self.Primary.BurstMaxShots)
	local burstDelay = math.Rand(self.Primary.BurstMinDelay, self.Primary.BurstMaxDelay)
	
	for i = 1, burstCount do
		
		timer.Simple((i - 1) * fireDelay, function()
		
			if not IsValid(self) then return end

			local owner = self:GetOwner()
			if not IsValid(owner) then return end
			if not self:CanPrimaryFire() then return end
			if not owner:GetEnemy() or owner:GetEnemy() ~= currentEnemy then

				if not self.Primary.BurstCancellable and self.LastTargetPos then

					self:Shoot(self.LastTargetPos)

				end

				return

			end

			self:Shoot()
		
		end)
	
	end
	
	self:SetNextPrimaryFire(CurTime() + burstCount * fireDelay + burstDelay)
	
end

function SWEP:Shoot(forceTargetPos)

	local owner = self:GetOwner()
	local enemy = owner:GetEnemy()

	local muzzlePos = IsValid(enemy) and owner:GetPos():Distance(enemy:GetPos()) > 128 and self:GetAttachment(self.MuzzleAttachment).Pos or owner:WorldSpaceCenter()
	local targetPos = forceTargetPos
	
	if not targetPos then

		if enemy:IsPlayer() then

			local headBone = enemy:LookupBone("ValveBiped.Bip01_Head1")
			targetPos = (headBone and enemy:GetBonePosition(headBone)) or enemy:HeadTarget(muzzlePos) or enemy:BodyTarget(muzzlePos) or enemy:WorldSpaceCenter()

		else

			local enemyClass = enemy:GetClass()
			if self.AimForHeadTable[enemyClass] then
		
				if enemyClass == "npc_combine_s" then -- Special logic for npc_combine_s because NPC:HeadTarget() doesn't return a good position when used on npc_combine_s
		
					local headBone = enemy:LookupBone("ValveBiped.Bip01_Head1")
					targetPos = (headBone and enemy:GetBonePosition(headBone)) or enemy:HeadTarget(muzzlePos) or enemy:BodyTarget(muzzlePos) or enemy:WorldSpaceCenter()
		
				else
		
					targetPos = enemy:HeadTarget(muzzlePos) or enemy:BodyTarget(muzzlePos) or enemy:WorldSpaceCenter()
		
				end
		
			else
		
				targetPos = enemy:BodyTarget(muzzlePos) or enemy:WorldSpaceCenter()
		
			end

		end

	end

	self.LastTargetPos = targetPos
	
	debugoverlay.Cross(targetPos, 3, 1, Color(255,0,0), true)
	
	local direction = (targetPos - muzzlePos):GetNormalized()
	local spread = owner:IsMoving() and self.Primary.Spread * self.Primary.SpreadMoveMult or self.Primary.Spread

	local bulletInfo = {}
	bulletInfo.Attacker = owner
	bulletInfo.Callback = self.FireBulletsCallback
	bulletInfo.Damage = math.random(self.Primary.DamageMin, self.Primary.DamageMax) * GetConVar("npc_weapons_damage_mult"):GetFloat()
	bulletInfo.Force  = self.Primary.Force
	bulletInfo.Num = self.Primary.NumBullets
	bulletInfo.Tracer = self.TracerX
	bulletInfo.TracerName = self.EnableTracerEffect and self.TracerEffect or ""
	bulletInfo.AmmoType = self.Primary.Ammo
	bulletInfo.Dir = direction
	bulletInfo.Spread = Vector(spread, spread, 0)
	bulletInfo.Src = muzzlePos
	
	self:FireBullets(bulletInfo)
	self:ShootEffects()

	if self.ForceWalking then
	
		owner:SetMovementActivity(ACT_WALK)
		self.ForceWalkingUntil = CurTime() + self.ForceWalkingTime

	end
	
	if not self.Primary.InfiniteAmmo then
	
		self:TakePrimaryAmmo(1)
	
	end
	
end

function SWEP:FireBulletsCallback(tr, dmgInfo)

	local weapon = self:GetActiveWeapon()
	if IsValid(weapon) then

		local distance = tr.StartPos:Distance(tr.HitPos)
		local dropoff = Lerp((distance - weapon.Primary.MinDropoffDistance) / weapon.Primary.MaxDropoffDistance, 1, weapon.Primary.MaxDropoffFactor)
		
		dmgInfo:ScaleDamage(dropoff)

	else

		dmgInfo:ScaleDamage(0)

	end

	for _, shootEffect in ipairs(weapon.ExtraShootEffects or {}) do

		local effect = EffectData()
		effect:SetEntity(weapon)
		effect:SetStart(tr.HitPos)
		effect:SetOrigin(tr.HitPos)
		effect:SetNormal(tr.HitNormal)
		effect:SetAngles(tr.HitNormal:Angle())
		effect:SetScale(shootEffect.Scale or 1)
		effect:SetMagnitude(shootEffect.Magnitude or 1)
		effect:SetRadius(shootEffect.Radius or 1)
		effect:SetAttachment(weapon.MuzzleAttachment)
		util.Effect(shootEffect.EffectName or "", effect)

	end

end

function SWEP:ShootEffects()
	
	self:EmitSound(type(self.Primary.Sound) == "string" and self.Primary.Sound or self.Primary.Sound[math.random(#self.Primary.Sound)])
	
	if self.EnableMuzzleEffect then
	
		local muzzleEffect = EffectData()
		local muzzleAttach = self:GetAttachment(self.MuzzleAttachment)
		muzzleEffect:SetEntity(self)
		muzzleEffect:SetOrigin(muzzleAttach and muzzleAttach.Pos or self:GetPos())
		muzzleEffect:SetAngles(muzzleAttach and muzzleAttach.Ang or self:GetAngles())
		muzzleEffect:SetScale(1)
		muzzleEffect:SetMagnitude(1)
		muzzleEffect:SetRadius(1)
		util.Effect(self.MuzzleEffect, muzzleEffect)
		
		self:GetOwner():MuzzleFlash()
	
	end

	if self.EnableShellEffect then
	
		local shellEffect = EffectData()
		local shellAttach = self:GetAttachment(self.ShellAttachment)
		shellEffect:SetEntity(self)
		shellEffect:SetOrigin(shellAttach and shellAttach.Pos or self:GetPos())
		shellEffect:SetAngles(shellAttach and shellAttach.Ang or self:GetAngles())
		shellEffect:SetScale(1)
		shellEffect:SetMagnitude(1)
		shellEffect:SetRadius(1)
		util.Effect(self.ShellEffect, shellEffect)
		
	end

end

function SWEP:EmitReloadSounds()

	if not self.ReloadSounds then return end

	for k, v in pairs(self.ReloadSounds) do

		timer.Simple(v[1], function()

			if IsValid(self) and IsValid(self:GetOwner()) then
	
				self:EmitSound(v[2])
	
			end
	
		end)

	end

end

function SWEP:Think()
	
	timer.Simple(0.01, function()
		
		if IsValid(self) then
		
			self:Think()
			
		end
	
	end)
	
	local owner = self:GetOwner()
	if IsValid(owner) and owner:IsNPC() then

		local curtime = CurTime()
		if self.ForceWalkingUntil and curtime > self.ForceWalkingUntil then

			owner:SetMovementActivity(ACT_RUN)
			self.ForceWalkingUntil = nil

		end

		local ownerActivity = owner:GetActivity()
		if ownerActivity == ACT_RELOAD and self.LastActivity ~= ACT_RELOAD then

			self:SetNextPrimaryFireReload()
			self:EmitReloadSounds()

		end
		self.LastActivity = ownerActivity
		
		local enemy = owner:GetEnemy()
		if IsValid(enemy) then
			
			local enemyVisible = owner:Visible(enemy)
			if enemy ~= self.LastEnemy or not enemyVisible then

				self:SetNextPrimaryFireAimDelay()
				self.LastEnemy = enemy
			
			end
			local enemyIsAlive = enemy:Health() > 0 and enemy:GetMaxHealth() > 0
			if self:GetNextPrimaryFire() <= curtime and self:CanPrimaryFire() and enemyIsAlive and enemyVisible then

				self:PrimaryFire()
			
			end
			
		else
			
			self:SetNextPrimaryFireAimDelay()

		end

		if self:Clip1() <= 0 and not owner:IsCurrentSchedule(SCHED_RELOAD) and not owner:IsCurrentSchedule(SCHED_HIDE_AND_RELOAD) then
	
			owner:SetSchedule(SCHED_RELOAD)
		
		end
		
	end
	
end

function SWEP:CanPrimaryFire()

	local owner = self:GetOwner()
	if self:Clip1() <= 0 or owner:GetActivity() == ACT_RELOAD then
	
		return false
	
	end
	
	local enemy = owner:GetEnemy()
	if IsValid(enemy) then
	
		local aimDirection = owner:GetAngles().y
		local enemyDirection = Vector(enemy:GetPos() - owner:GetPos()):Angle().y
		
		if math.abs(enemyDirection - aimDirection) > 45 then
		
			return false
		
		end
		
	end
	
	return true

end

function SWEP:SetNextPrimaryFireReload()

	local reloadtime = CurTime() + self.ReloadTime
	if self:GetNextPrimaryFire() <= reloadtime then

		self:SetNextPrimaryFire(reloadtime)

	end

end

function SWEP:SetNextPrimaryFireAimDelay()

	local curtime = CurTime()
	if self:GetNextPrimaryFire() <= curtime + self.Primary.AimDelayMax then

		local aimtime = math.Rand(self.Primary.AimDelayMin, self.Primary.AimDelayMax)
		self:SetNextPrimaryFire(curtime + aimtime)

	end

end

function SWEP:DrawWorldModel()

	local owner = self:GetOwner()
	if not self.ClientModel or not IsValid(owner) then

		self:DrawModel()
		return

	end

	local pos, ang = self:GetBoneOrientation(self.ClientModel.bone or "ValveBiped.Bip01_R_Hand", owner)
	if !pos then

		return

	end
	
	local model = self.ClientModelEnt
	if not IsValid(model) then
		
		return
	
	end
	
	model:SetPos(pos + ang:Forward() * self.ClientModel.pos.x + ang:Right() * self.ClientModel.pos.y + ang:Up() * self.ClientModel.pos.z)

	ang:RotateAroundAxis(ang:Up(), self.ClientModel.angle.y)
	ang:RotateAroundAxis(ang:Right(), self.ClientModel.angle.p)
	ang:RotateAroundAxis(ang:Forward(), self.ClientModel.angle.r)
	model:SetAngles(ang)
	
	local matrix = Matrix()
	matrix:Scale(self.ClientModel.size or Vector(1, 1, 1))
	model:EnableMatrix("RenderMultiply", matrix)
	
	if self.ClientModel.skin and self.ClientModel.skin ~= model:GetSkin() then

		model:SetSkin(self.ClientModel.skin)

	end
	
	for k, v in pairs(self.ClientModel.bodygroup or {}) do

		model:SetBodygroup(k, v)

	end
	
	render.SetColorModulation(self.ClientModel.color.r / 255, self.ClientModel.color.g / 255, self.ClientModel.color.b / 255)
	render.SetBlend(self.ClientModel.color.a / 255)
	
end

function SWEP:CreateClientModel()
		
	if !IsValid(self.ClientModelEnt) then

		self.ClientModelEnt = ClientsideModel(self.ClientModel.model, RENDERGROUP_OPAQUE)
		self.ClientModelEnt:SetPos(self:GetPos())
		self.ClientModelEnt:SetAngles(self:GetAngles())
		self.ClientModelEnt:SetParent(self)
		
	end
	
end

function SWEP:GetBoneOrientation(boneName, ent)

	local bone = ent:LookupBone(boneName)
	local matrix = bone and ent:GetBoneMatrix(bone) or nil
	if matrix then

		return matrix:GetTranslation(), matrix:GetAngles()

	end

end

function SWEP:GetCapabilities()
	return 0 --Prevents weapons from firing animation events (e.g. built-in HL2 guns muzzleflash & shell casings)
end

function SWEP:PrimaryAttack()
	return
end

function SWEP:SecondaryAttack()
	return
end

function SWEP:OnDrop()
	self:Remove()
end

function SWEP:OnRemove()

	if CLIENT then

		if self.ClientModelEnt then

			self.ClientModelEnt:Remove()

		end

		timer.Simple(0, function()
			
			if IsValid(self) then

				self:CreateClientModel()

			end

		end)

	end

end

function SWEP:CanBePickedUpByNPCs()
	return true
end

hook.Add("PlayerCanPickupWeapon", "NPCWeaponsDisallowPlayerPickup", function(ply, wep)
    if (wep.IsNPCWeapon) then return false end
end)