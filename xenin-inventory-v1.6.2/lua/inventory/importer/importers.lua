--[[
This code was generated by LAUX, a Lua transpiler
LAUX is a fork of LAU with additional changes.

More info & source code can be found at: https://gitlab.com/sleeppyy/laux
]]

local Importers
do
    local _class_0
    local _base_0 = {
        __name = "Importers",
        setImporters = function(self, importers)
            self.importers = importers
            return self
        end,
        getImporters = function(self)
            return self.importers
        end,
        addImporter = function(self, id, importer)
            local __laux_type = (istable(importer) and importer.__type and importer:__type()) or type(importer)
            assert(__laux_type == "XeninInventory.Importer", "Expected parameter `importer` to be type `XeninInventory.Importer` instead of `" .. __laux_type .. "`")
            self.importers[id] = importer()
        end,
        getImporter = function(self, id)
            return self.importers[id]end,
        __type = function(self)
            return "XeninInventory.Importers"end
    }
    _base_0.__index = _base_0
    _class_0 = setmetatable({
        __init = function(self)
            self.importers = {}
        end,
        __base = _base_0
    }, {
        __index = _base_0,
        __call = function(cls, ...)
            local _self_0 = setmetatable({}, _base_0)
            cls.__init(_self_0, ...)
            return _self_0
        end
    })
    Importers = _class_0
end

XeninInventory.Importers = Importers()