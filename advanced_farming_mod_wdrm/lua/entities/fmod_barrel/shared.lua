ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Milk Barrel"
ENT.Category = "Farming Mod"
ENT.Author = "Venatuss"
ENT.Spawnable = true

function ENT:SetupDataTables()
    self:NetworkVar("Int", 0, "Milk")
end
