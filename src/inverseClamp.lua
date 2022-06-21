--[[
	The inverse of the Lerp function. It returns the alpha value
	between the range of [min, max] given the number.

	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/NumberUtil.lua
]]
function InverseLerp(min: number, max: number, value: number)
	return (value - min) / (max - min)
end