--[[
	Find the distance between a point and a line.
	Source: https://devforum.community/t/algorithms-mega-thread/325/8
]]
function DistanceFromLine(point: Vector3, linePoint: Vector3, lineDirection: Vector3): number
	return (point - linePoint):Cross(lineDirection).Magnitude / lineDirection.Magnitude
end