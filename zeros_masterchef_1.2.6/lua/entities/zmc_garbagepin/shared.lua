ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Model = "models/zerochain/props_kitchen/zmc_garbagebin.mdl"
ENT.AutomaticFrameAdvance = true
ENT.Spawnable = true
ENT.AdminSpawnable = false
ENT.PrintName = "Garbagebin"
ENT.Category = "Zeros MasterCook"
ENT.RenderGroup = RENDERGROUP_OPAQUE

function ENT:CanProperty(ply)
	return ply:IsSuperAdmin()
end
function ENT:CanTool( ply, tab, str )
	return ply:IsSuperAdmin()
end
function ENT:CanDrive(ply)
	return ply:IsSuperAdmin()
end

function ENT:CanPickUp(ItemID)
	return true
end
