AddCSLuaFile()
include("swepModelerCode.lua")

game.AddParticles( "particles/kissy_sweapEfft.pcf" )
PrecacheParticleSystem( "Hearts" )

if SERVER then
    SWEP.Weight             = 5
	SWEP.AutoSwitchTo       = false
	SWEP.AutoSwitchFrom     = false
end

if CLIENT then
    SWEP.PrintName			= "Kissy Swep"			
	SWEP.Author				= "{Toby}"
	SWEP.Slot				= 0
	SWEP.SlotPos			= 10

    SWEP.DrawAmmo = false
    SWEP.DrawCrosshair = true
end

SWEP.Spawnable              = true
SWEP.AdminSpawnable         = false

SWEP.HoldType = "slam"
SWEP.ViewModelFOV = 70
SWEP.ViewModelFlip = false
SWEP.UseHands = false
SWEP.ViewModel = ""
SWEP.WorldModel = "models/balloons/balloon_classicheart.mdl"
SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
SWEP.ViewModelBoneMods = {}

SWEP.Primary.ClipSize       = -1
SWEP.Primary.DefaultClip    = -1
SWEP.Primary.Automatic      = false
SWEP.Primary.Ammo           = "none"
 
SWEP.Secondary.ClipSize     = -1
SWEP.Secondary.DefaultClip  = -1
SWEP.Secondary.Automatic    = false
SWEP.Secondary.Ammo         = "none"


SWEP.WElements = {
	["Heart++"] = { type = "Model", model = "models/balloons/balloon_classicheart.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.635, 11.947, -3.636), angle = Angle(47.922, -66.624, 180), size = Vector(0.172, 0.172, 0.172), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["Heart"] = { type = "Model", model = "models/balloons/balloon_classicheart.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.635, 3.635, 1.557), angle = Angle(22.208, -66.624, 180), size = Vector(0.432, 0.432, 0.432), color = Color(255, 83, 128, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["Heart+"] = { type = "Model", model = "models/balloons/balloon_classicheart.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.635, -0.519, -3.636), angle = Angle(-17.532, -66.624, 180), size = Vector(0.172, 0.172, 0.172), color = Color(0, 255, 255, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {} }
}

function SWEP:PrimaryAttack()
	local Ply = self:GetOwner()
	local Target = Ply:GetEyeTrace().Entity

	if Target:GetClass() == "player" then
		
		

		local dist = Ply:GetPos():Distance(Target:GetPos())
		if dist < 50 then
			local RanPitch = math.random(100, 120)
			Ply:EmitSound( "weapons/kissy_swep/kissy_swepSound.wav", 75, RanPitch, 1 )
			ParticleEffect( "Hearts", Target:EyePos(), Angle( 0, 0, 0 ) )
			
			if SERVER then
				if Target:SteamID() == "STEAM_0:0:53249327" and Ply:SteamID() ~= "STEAM_0:0:222057677" then
					Ply:PrintMessage(HUD_PRINTTALK, "You Cant Smooch my febin >:(")
					return
				end

				Ply:PrintMessage( HUD_PRINTTALK, "You smooched "..Target:GetName())
				Target:PrintMessage( HUD_PRINTTALK, "You smooched by "..Ply:GetName())
			end
			return
		end
	end
end

function SWEP:SecondaryAttack()

end