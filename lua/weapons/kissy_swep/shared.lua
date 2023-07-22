if SERVER then
    AddCSLuaFile("shared.lua")

    SWEP.HoldType = "normal"
    SWEP.Weight = 5
	SWEP.AutoSwitchTo = false
	SWEP.AutoSwitchFrom = false
end

if CLIENT then
    SWEP.PrintName			= "Kissy Swep"			
	SWEP.Author				= "{Toby}"
	SWEP.Slot				= 0
	SWEP.SlotPos			= 10

    SWEP.DrawAmmo = false
    SWEP.DrawCrosshair = false
end

SWEP.Spawnable = true
SWEP.AdminSpawnable = false



SWEP.ViewModel = ""
SWEP.WorldModel = "models/balloons/balloon_classicheart.mdl"

SWEP.ShowWorldModel = false
SWEP.ShowViewModel = false



SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"
 
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

function SWEP:PrimaryAttack()

end

function SWEP:SecondaryAttack()

end