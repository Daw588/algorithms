--[[
	Clamps the magnitude of a vector so it is only a certain length.
	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/VectorUtil.lua
]]
function ClampVectorMagnitude(vector: Vector3, maxMagnitude: number): Vector3
	return (vector.Magnitude > maxMagnitude and (vector.Unit * maxMagnitude) or vector)
end