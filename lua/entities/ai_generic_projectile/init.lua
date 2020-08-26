AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
 
include("shared.lua")

function ENT:Initialize()

	self:SetModel(self.Model)
	self:PhysicsInitBox(self:GetModelBounds())
	
	local phys = self:GetPhysicsObject()
	if IsValid(phys) then
	
		phys:EnableGravity(false)
		phys:EnableDrag(false)
		phys:Wake()
		phys:SetVelocity(self:GetForward() * self.Speed)
		
	end
	
end

function ENT:Think()

	local phys = self:GetPhysicsObject()
	phys:AddVelocity(self:GetForward() * self.Acceleration)
	
end

function ENT:PhysicsCollide(data, physobj)
	
	self.HitPos = data.HitPos
	
	local hitEnt = data.HitEntity
	if IsValid(hitEnt) then

		local dmginfo = DamageInfo()
		local owner = self:GetOwner()
		if IsValid(owner) then
			
			dmginfo:SetAttacker(owner)
			
		else
		
			dmginfo:SetAttacker(self)
		
		end
		dmginfo:SetDamage(self.Damage * GetConVar("npc_weapons_damage_mult"):GetFloat())
		dmginfo:SetDamageForce(self:GetForward() * self.Force)
		dmginfo:SetDamageType(self.DamageType or DMG_GENERIC)
		dmginfo:SetDamagePosition(self.HitPos)

		hitEnt:TakeDamageInfo(dmginfo)

	end

	local hitSound = Sound(self.ProjectileHitSound)
	self:EmitSound(hitSound, SNDLVL_NORM, 100, 0.8, CHAN_WEAPON)

	local hitEffect = EffectData()
	hitEffect:SetStart(self.HitPos or self:WorldSpaceCenter())
	hitEffect:SetOrigin(self.HitPos or self:WorldSpaceCenter())
	hitEffect:SetScale(self.ProjectileHitEffectScale or 1)
	hitEffect:SetMagnitude(self.ProjectileHitEffectMagnitude or 1)
	hitEffect:SetRadius(self.ProjectileHitEffectRadius or 1)
	hitEffect:SetEntity(hitEnt)
	local backwardsNormalVector = self:GetForward() * -1
	hitEffect:SetAngles(backwardsNormalVector:Angle())
	hitEffect:SetNormal(backwardsNormalVector)
	util.Effect(self.ProjectileHitEffect or "", hitEffect)

	self:Remove()
	
end