--[[
	Remaps the range of "num" from its old range of [inMin, inMax]
	to a new range of [outMin, outMax].

	This is useful when needing to convert a range of inputs to a
	different output. For instance, remapping gamepad stick input
	to a larger range controlling a vehicle steering wheel.

	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/NumberUtil.lua
]]
function RemapRange(n: number, inMin: number, inMax: number, outMin: number, outMax: number): number
	return outMin + ((outMax - outMin) * ((n - inMin) / (inMax - inMin)))
end