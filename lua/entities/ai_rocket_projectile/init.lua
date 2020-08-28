AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
 
include("shared.lua")

function ENT:Initialize()

	self:SetModel(self.Model or "models/weapons/w_missile.mdl")
	self:PhysicsInitBox(self:GetModelBounds())
	
	local phys = self:GetPhysicsObject()
	if IsValid(phys) then
    
        phys:SetMass(0.001) --Prevent physics damage from collisions
		phys:EnableGravity(false)
        phys:EnableDrag(false)
		phys:Wake()
		phys:SetVelocity(self:GetForward() * (self.Speed or 0))
		phys:AddAngleVelocity(Vector((self.RotationSpeed or 0), 0, 0))
		
	end
	
	self.Trail = util.SpriteTrail(self, 0, self.TrailData.Color, self.TrailData.Additive, self.TrailData.StartWidth, self.TrailData.EndWidth, self.TrailData.Lifetime, self.TrailData.TextureRes, self.TrailData.Texture)
    
    if self.LoopingSound then

        self:EmitSound(self.LoopingSound)
        
    end
	
end

function ENT:Think()

	local phys = self:GetPhysicsObject()
	phys:AddVelocity(self:GetForward() * (self.Acceleration or 0))
	
end

function ENT:PhysicsCollide(data, physobj)
	
	local projPos = self:WorldSpaceCenter()
	local radius = self.ExplosionRadius or 0
	
	for k, v in pairs(ents.FindInSphere(projPos, radius)) do
		
		if IsValid(v) and v:GetPhysicsObject() and self:Visible(v) then
			
			local victimPos = v:WorldSpaceCenter()
			local distance = projPos:Distance(victimPos)
			local maxDamage = (self.Damage or 0) * GetConVar("npc_weapons_damage_mult"):GetFloat()
			local damage = Lerp(distance / radius, maxDamage, 0)
			
			local direction = (victimPos - projPos):GetNormalized()
		
			local owner = self:GetOwner()
			local dmginfo = DamageInfo()
			if IsValid(owner) then
			
				dmginfo:SetAttacker(owner)
				
			else
			
				dmginfo:SetAttacker(self)
			
			end

			dmginfo:SetDamage(damage)
			dmginfo:SetDamageType(DMG_BLAST)
			dmginfo:SetDamageForce(direction * damage * damage * 10)
			dmginfo:SetDamagePosition(victimPos)
			v:TakeDamageInfo(dmginfo)
		
		end
		
    end
    
    if self.HitEffect then

        local effect = EffectData()
        effect:SetStart(self:WorldSpaceCenter())
        effect:SetOrigin(self:WorldSpaceCenter())
        effect:SetScale(self.HitEffect.Scale or 1)
        effect:SetMagnitude(self.HitEffect.Magnitude or 1)
        effect:SetRadius(self.HitEffect.Radius or 1)
        util.Effect(self.HitEffect.Name or "", effect)

    end
	
	self:Remove()
	
end

function ENT:OnRemove()

    if self.LoopingSound then

        self:StopSound(self.LoopingSound)

    end

end