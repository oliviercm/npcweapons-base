--Use this as a base class for making a "Random Weapon" weapon that will give NPCs a random weapon from a list when they are spawned with it.
--Example:
--
--
--/lua/weapons/my_random_weapon/shared.lua
--
--DEFINE_BASECLASS("swep_ai_random_base")
--SWEP.WeaponList = {"swep_ai_myweapon1", "swep_ai_myweapon2"}
--
--
--This 2 line weapon class will give NPCs who spawn with it a random weapon from the list, which in this case is either swep_ai_myweapon1 or swep_ai_myweapon2.

SWEP.PrintName					= "NPC Random Weapon Base"
SWEP.Author						= "xyzzy"
SWEP.Contact					= "https://steamcommunity.com/id/theRealXyzzy/"
SWEP.Category					= "NPC Weapons"
SWEP.IsNPCWeapon				= true

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