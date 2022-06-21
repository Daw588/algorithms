--[[
	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/VectorUtil.lua
]]
function SquaredVectorMagnitude(vector: Vector3): number
	return vector.X ^ 2 + vector.Y ^ 2 + vector.Z ^ 2
end