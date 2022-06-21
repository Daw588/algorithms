--[[
	Calculates the angle between two vectors without a normalization step.
	Source: https://devforum.community/t/algorithms-mega-thread/325/2
]]
function AngleBetweenVectors(a: Vector3, b: Vector3): number
	return math.atan2(a:Cross(b).Magnitude, a:Dot(b))
end