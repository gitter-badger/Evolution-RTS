--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function widget:GetInfo()
  return {
    name      = "Shoot Now!",
    desc      = "Orders a unit to fire its weapon at the ground below using an action.",
    author    = "CarRepairer",
    date      = "2010-04-18",
    license   = "GNU GPL, v2 or later",
    layer     = 5,
    enabled   = true,
	handler   = true,
  }
end


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local echo = Spring.Echo

local unittypes = {
	[UnitDefNames['ecommander'].id] = 1,
	[UnitDefNames['eorb'].id] 		= 2,
}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local function AddAction(cmd, func, data, types)
	return widgetHandler.actionHandler:AddAction(widget, cmd, func, data, types)
end
local function RemoveAction(cmd, types)
	return widgetHandler.actionHandler:RemoveAction(widget, cmd, types)
end


local function FireWeapon()
	local selUnits = Spring.GetSelectedUnits()
	for _, unitID in ipairs(selUnits) do
		local udid = Spring.GetUnitDefID(unitID)
		if unittypes[udid] then
			local x,_,z = Spring.GetUnitPosition(unitID)
			local y = Spring.GetGroundHeight(x,z)
			Spring.GiveOrderToUnit(unitID, CMD.INSERT,{0,CMD.ATTACK,CMD.OPT_INTERNAL,x,y,z},{"alt"})
			--echo 'attacking'
		end
	end
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function widget:Initialize()
	AddAction("fireweapon", FireWeapon, nil, "t")
	-- replace default key binds
	Spring.SendCommands({
		"unbindkeyset d",
	})
	Spring.SendCommands("bind d fireweapon")

end

function widget:Shutdown()
	RemoveAction("fireweapon")
	Spring.SendCommands("unbindaction fireweapon")
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------



