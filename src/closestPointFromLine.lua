--[[
	Given any point, return the coordinates of the closest point on the line.
	Source: https://devforum.community/t/algorithms-mega-thread/325/8
]]
function ClosestPointFromLine(point: Vector3, linePoint: Vector3, lineDirection: Vector3): Vector3
	local projection = (point - linePoint):Dot(lineDirection) / lineDirection.Magnitude ^ 2
	return linePoint + projection * lineDirection
end