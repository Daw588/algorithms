--[[
	Interpolate between two numbers by a certain alpha/percentage.
	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/NumberUtil.lua
]]
function Lerp(min: number, max: number, alpha: number): number
	return min + ((max - min) * alpha)
end