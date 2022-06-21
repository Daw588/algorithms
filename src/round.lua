--[[
	Rounds a number to the nearest whole number.
	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/NumberUtil.lua
]]
function Round(value: number): number
	return value >= 0 and math.floor(value + 0.5) or math.ceil(value - 0.5)
end