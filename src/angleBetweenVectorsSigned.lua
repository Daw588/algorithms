-- Dependencies
local AngleBetweenVectors

--[[
	Same as AngleBetweenVectors, but returns a signed value.
	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/VectorUtil.lua
]]
function AngleBetweenVectorsSigned(a: Vector3, b: Vector3, axis: Vector3): number
	return AngleBetweenVectors(a, b) * math.sign(axis:Dot(a:Cross(b)))
end