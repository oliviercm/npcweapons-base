AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
 
include("shared.lua")

function ENT:Initialize()

    self:SetModel(self.Model or "models/weapons/w_missile.mdl")
    self:SetModelScale(self.ModelScale or 1)
	self:PhysicsInitBox(self:GetModelBounds())
	
	local phys = self:GetPhysicsObject()
	if IsValid(phys) then
    
        phys:AddGameFlag(FVPHYSICS_NO_IMPACT_DMG + FVPHYSICS_NO_PLAYER_PICKUP)
		phys:EnableGravity(false)
		phys:EnableDrag(false)
		phys:Wake()
        phys:SetVelocity(self:GetForward() * (self.Speed or 0))
        phys:AddAngleVelocity(Vector((self.RotationSpeed or 0), 0, 0))
		
    end

    if self.Trail then
    
        local trail = util.SpriteTrail(self, self.Trail.Attachment or 0, self.Trail.Color or Color(255, 255, 255, 255), self.Trail.Additive or true, self.Trail.StartWidth or 1, self.Trail.EndWidth or 0, self.Trail.Lifetime or 1, self.Trail.TextureRes or 0, self.Trail.Texture or "trails/smoke.vmt")

    end

    if self.LoopingSound then

        self:EmitSound(self.LoopingSound)
        
    end

end

function ENT:Think()

	local phys = self:GetPhysicsObject()
	phys:AddVelocity(self:GetForward() * (self.Acceleration or 0))
	
end

function ENT:PhysicsCollide(data, physobj)
	
    self.HitPos = data.HitPos
    
    if self.IsExplosive then

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
                dmginfo:SetDamageType(self.DamageType or DMG_BLAST)
                dmginfo:SetDamageForce(direction * damage * damage * self.Force)
                dmginfo:SetDamagePosition(self.HitPos)

                v:TakeDamageInfo(dmginfo)
            
            end
            
        end

    else

        local hitEnt = data.HitEntity
        if IsValid(hitEnt) then

            local dmginfo = DamageInfo()
            local owner = self:GetOwner()
            if IsValid(owner) then
                
                dmginfo:SetAttacker(owner)
                
            else
            
                dmginfo:SetAttacker(self)
            
            end

            dmginfo:SetDamage((self.Damage or 0) * GetConVar("npc_weapons_damage_mult"):GetFloat())
            dmginfo:SetDamageForce(self:GetForward() * self.Force)
            dmginfo:SetDamageType(self.DamageType or DMG_GENERIC)
            dmginfo:SetDamagePosition(self.HitPos)

            hitEnt:TakeDamageInfo(dmginfo)

        end

    end

    if self.HitSound then

	    self:EmitSound(Sound(self.HitSound.Sound), self.HitSound.Level or 75, self.HitSound.Pitch or 100, self.HitSound.Volume or 1, self.HitSound.Channel or CHAN_AUTO)

    end

    if self.HitEffect then

        local hitEffect = EffectData()
        hitEffect:SetStart(self.HitPos or self:WorldSpaceCenter())
        hitEffect:SetOrigin(self.HitPos or self:WorldSpaceCenter())
        hitEffect:SetScale(self.HitEffect.Scale or 1)
        hitEffect:SetMagnitude(self.HitEffect.Magnitude or 1)
        hitEffect:SetRadius(self.HitEffect.Radius or 1)
        hitEffect:SetEntity(hitEnt)
        local backwardsNormalVector = self:GetForward() * -1
        hitEffect:SetAngles(backwardsNormalVector:Angle())
        hitEffect:SetNormal(backwardsNormalVector)
        util.Effect(self.HitEffect.Name or "", hitEffect)

    end

	self:Remove()
	
end

function ENT:OnRemove()

    if self.LoopingSound then

        self:StopSound(self.LoopingSound)

    end

end