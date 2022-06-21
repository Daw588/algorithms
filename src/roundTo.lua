-- Dependencies
local Round

--[[
	Rounds a number to the nearest given multiple. An example would be
	locking world positions onto a larger grid.

	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/NumberUtil.lua
]]
function RoundTo(value: number, multiple: number): number
	return Round(value / multiple) * multiple
end