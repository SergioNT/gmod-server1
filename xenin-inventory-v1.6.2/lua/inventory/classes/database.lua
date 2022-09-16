--[[
This code was generated by LAUX, a Lua transpiler
LAUX is a fork of LAU with additional changes.

More info & source code can be found at: https://gitlab.com/sleeppyy/laux
]]

XeninInventory.Database = {}

function XeninInventory.Database:GetConnection()
  return XeninDB
end

function XeninInventory.Database:Drop()
  local conn = self:GetConnection()

  conn.query([[DROP TABLE IF EXISTS inventory_player]])
  conn.query([[DROP TABLE IF EXISTS inventory_bank]])
end

function XeninInventory.Database:Tables()
  local conn = self:GetConnection()

  conn.query([[
    CREATE TABLE IF NOT EXISTS inventory_player (
      sid64 VARCHAR(22) NOT NULL,
      slot INT(11) NOT NULL,
      ent TEXT NOT NULL,
      drop_ent TEXT NOT NULL,
      amount INT NOT NULL,
      data TEXT NOT NULL,
      PRIMARY KEY (sid64, slot)
    )
  ]])

  conn.query([[
    CREATE TABLE IF NOT EXISTS inventory_bank (
      sid64 VARCHAR(22) NOT NULL,
      slot INT(11) NOT NULL,
      ent TEXT NOT NULL,
      drop_ent TEXT NOT NULL,
      amount INT NOT NULL,
      data TEXT NOT NULL,
      PRIMARY KEY (sid64, slot)
    )
  ]])
end

hook.Add("Xenin.ConfigLoaded", "XeninInventory", function()
  XeninInventory.Database:Tables()
end)

function XeninInventory.Database:SaveSlot(sid64, slot, ent, dropEnt, amount, data)
  local conn = self:GetConnection()
  data = conn.SQLStr(util.TableToJSON(data))

  local p = XeninUI.Promises.new()

  if conn.isMySQL() then
    local sql = [[
      INSERT INTO inventory_player (sid64, slot, ent, drop_ent, amount, data)
      VALUES (':sid64', :slot, ':ent', ':drop_ent', :amount, :data)
      ON DUPLICATE KEY
        UPDATE
          ent = ':ent',
          drop_ent = ':drop_ent',
          amount = :amount,
          data = :data
    ]]
    sql = sql:Replace(":sid64", sid64)
    sql = sql:Replace(":slot", slot)
    sql = sql:Replace(":ent", ent)
    sql = sql:Replace(":drop_ent", dropEnt)
    sql = sql:Replace(":amount", amount)
    sql = sql:Replace(":data", data)

    return XeninUI:InvokeSQL(conn, sql, "XeninInventory.SaveSlot")
  else



    local sql = [[
      SELECT * FROM inventory_player
      WHERE sid64 = ':sid64'
        AND slot = ':slot'
    ]]
    sql = sql:Replace(":sid64", sid64)
    sql = sql:Replace(":slot", slot)

    conn.query(sql, function(result)
      if (istable(result) and #result > 0) then


        local sql = [[
          UPDATE inventory_player
          SET ent = ':ent',
              drop_ent = ':drop_ent',
              amount = :amount,
              data = :data
          WHERE sid64 = ':sid64'
            AND slot = ':slot'
        ]]
        sql = sql:Replace(":sid64", sid64)
        sql = sql:Replace(":slot", slot)
        sql = sql:Replace(":ent", ent)
        sql = sql:Replace(":drop_ent", dropEnt)
        sql = sql:Replace(":amount", amount)
        sql = sql:Replace(":data", data)

        return XeninUI:InvokeSQL(conn, sql, "XeninInventory.SaveSlot"):next(function(results)
          p:resolve()end)
      else
        local sql = [[
          INSERT INTO inventory_player (sid64, slot, ent, drop_ent, amount, data)
          VALUES (':sid64', :slot, ':ent', ':drop_ent', :amount, :data)
        ]]
        sql = sql:Replace(":sid64", sid64)
        sql = sql:Replace(":slot", slot)
        sql = sql:Replace(":ent", ent)
        sql = sql:Replace(":drop_ent", dropEnt)
        sql = sql:Replace(":amount", amount)
        sql = sql:Replace(":data", data)

        return XeninUI:InvokeSQL(conn, sql, "XeninInventory.SaveSlot"):next(function(results)
          p:resolve()end)
      end
    end)
  end

  return p
end

function XeninInventory.Database:DeleteSlot(sid64, slot)
  local conn = self:GetConnection()
  local sql = [[
    DELETE FROM inventory_player
    WHERE sid64 = ':sid64'
      AND slot = :slot
  ]]
  sql = sql:Replace(":sid64", sid64)
  sql = sql:Replace(":slot", slot)

  conn.query(sql)
end

function XeninInventory.Database:SaveBankSlot(sid64, slot, ent, dropEnt, amount, data)
  local conn = self:GetConnection()
  data = conn.SQLStr(util.TableToJSON(data))

  if conn.isMySQL() then
    local sql = [[
      INSERT INTO inventory_bank (sid64, slot, ent, drop_ent, amount, data)
      VALUES (':sid64', :slot, ':ent', ':drop_ent', :amount, :data)
      ON DUPLICATE KEY
        UPDATE
          ent = ':ent',
          drop_ent = ':drop_ent',
          amount = :amount,
          data = :data
    ]]
    sql = sql:Replace(":sid64", sid64)
    sql = sql:Replace(":slot", slot)
    sql = sql:Replace(":ent", ent)
    sql = sql:Replace(":drop_ent", dropEnt)
    sql = sql:Replace(":amount", amount)
    sql = sql:Replace(":data", data)

    conn.query(sql)
  else
    local sql = [[
      SELECT * FROM inventory_bank
      WHERE sid64 = ':sid64'
        AND slot = ':slot'
    ]]
    sql = sql:Replace(":sid64", sid64)
    sql = sql:Replace(":slot", slot)

    conn.query(sql, function(result)
      if (istable(result) and #result > 0) then


        local sql = [[
          UPDATE inventory_bank
          SET ent = ':ent',
              drop_ent = ':drop_ent',
              amount = :amount,
              data = :data
          WHERE sid64 = ':sid64'
            AND slot = ':slot'
        ]]
        sql = sql:Replace(":sid64", sid64)
        sql = sql:Replace(":slot", slot)
        sql = sql:Replace(":ent", ent)
        sql = sql:Replace(":drop_ent", dropEnt)
        sql = sql:Replace(":amount", amount)
        sql = sql:Replace(":data", data)

        conn.query(sql)
      else
        local sql = [[
          INSERT INTO inventory_bank (sid64, slot, ent, drop_ent, amount, data)
          VALUES (':sid64', :slot, ':ent', ':drop_ent', :amount, :data)
        ]]
        sql = sql:Replace(":sid64", sid64)
        sql = sql:Replace(":slot", slot)
        sql = sql:Replace(":ent", ent)
        sql = sql:Replace(":drop_ent", dropEnt)
        sql = sql:Replace(":amount", amount)
        sql = sql:Replace(":data", data)

        conn.query(sql)
      end
    end)
  end
end

function XeninInventory.Database:DeleteBankSlot(sid64, slot)
  local conn = self:GetConnection()
  local sql = [[
    DELETE FROM inventory_bank
    WHERE sid64 = ':sid64'
      AND slot = :slot
  ]]
  sql = sql:Replace(":sid64", sid64)
  sql = sql:Replace(":slot", slot)

  conn.query(sql)
end

function XeninInventory.Database:Clear(sid64, bank)
  local conn = self:GetConnection()
  local sql = [[
    DELETE FROM inventory_]] .. (bank and "bank" or "player") .. [[
    WHERE sid64 = ':sid64'
  ]]
  sql = sql:Replace(":sid64", sid64)

  conn.query(sql)
end


function XeninInventory.Database:GetInventory(sid64, callback)
  local conn = self:GetConnection()
  local sql = [[
    SELECT slot, ent, drop_ent, amount, data 
    FROM inventory_player
    WHERE sid64 = ':sid64'
    ORDER BY slot ASC
  ]]
  sql = sql:Replace(":sid64", sid64)

  conn.query(sql, callback)
end

function XeninInventory.Database:GetBank(sid64, callback)
  local conn = self:GetConnection()
  local sql = [[
    SELECT slot, ent, drop_ent, amount, data 
    FROM inventory_bank
    WHERE sid64 = ':sid64'
    ORDER BY slot ASC
  ]]
  sql = sql:Replace(":sid64", sid64)

  conn.query(sql, callback)
end