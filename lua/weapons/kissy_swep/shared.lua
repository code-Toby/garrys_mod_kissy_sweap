SWEP.PrintName		= "Kissy Sweap"
SWEP.Author			= "{Toby}"
SWEP.Contact		= ""
SWEP.Purpose		= "To kissy kissy players"
SWEP.Instructions	= "left mouse to kiss"

SWEP.ViewModel		= "models/weapons/c_toolgun.mdl"
SWEP.WorldModel		= "models/weapons/w_toolgun.mdl"

SWEP.UseHands		= true
SWEP.Spawnable		= true

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.CanHolster = true
SWEP.CanDeploy = true

function SWEP:Initialize()

	self:SetHoldType( "none" )

	self.Primary = {
		ClipSize = -1,
		DefaultClip = -1,
		Automatic = false,
		Ammo = "none"
	}

	self.Secondary = {
		ClipSize = -1,
		DefaultClip = -1,
		Automatic = false,
		Ammo = "none"
	}

end