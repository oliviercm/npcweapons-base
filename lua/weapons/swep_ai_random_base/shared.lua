SWEP.WeaponList					= {"swep_ai_base"}

function SWEP:Initialize()
	
	if SERVER then
	
		self:Remove()
	
	end
	
end

function SWEP:OnRemove()

	if SERVER and IsValid(self) then

		local owner = self:GetOwner()
		if IsValid(owner) and owner:IsNPC() then
		
			owner:Give(self.WeaponList[math.random(#self.WeaponList)])
			
		end

	end

end