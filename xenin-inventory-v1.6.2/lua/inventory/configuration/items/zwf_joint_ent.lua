--[[
This code was generated by LAUX, a Lua transpiler
LAUX is a fork of LAU with additional changes.

More info & source code can be found at: https://gitlab.com/sleeppyy/laux
]]

local ITEM = XeninInventory:CreateItemV2()
ITEM:SetMaxStack(1)
ITEM:SetModel("models/zerochain/props_weedfarm/zwf_joint.mdl")
ITEM:SetDescription("A joint")

ITEM:AddDrop(function(self, ply, ent, tbl, tr)
  local data = tbl.data

  ent:SetWeedID(data.WeedID)
  ent:SetWeed_Name(data.WeedName)
  ent:SetWeed_Amount(data.WeedAmount)
  ent:SetWeed_THC(data.THC)
end)

function ITEM:GetData(ent)
  return {
    WeedID = ent:GetWeedID(),
    WeedName = ent:GetWeed_Name(),
    WeedAmount = ent:GetWeed_Amount(),
    THC = ent:GetWeed_THC()
  }
end

function ITEM:GetVisualAmount(item)
  return item.data.WeedAmount
end

function ITEM:GetName(item)
  local ent = isentity(item)
  local weedName = ent and item:GetWeed_Name() or item.data.WeedName
  local plant = ent and item:GetWeedID() or item.data.WeedID
  plant = zwf.config.Plants[plant]

  local str = weedName
  if (plant and plant.name) then
    str = str .. " [" .. plant.name .. "]"
  end

  return str
end

ITEM:Register("zwf_joint_ent")
