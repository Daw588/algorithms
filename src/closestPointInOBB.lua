--[[
	If a point is outside the box, then it returns the closest point on the box.
	If a point is inside the box, then it returns the point.

	Source: https://devforum.community/t/algorithms-mega-thread/325/13
]]
function ClosestPointInOBB(point: Vector3, boxCF: CFrame, boxSize: Vector3): Vector3
	local localPoint = boxCF:PointToObjectSpace(point)
	local halfSizeX = boxSize.X / 2
	local halfSizeY = boxSize.Y / 2
	local halfSizeZ = boxSize.Z / 2
	local closestPoint = Vector3.new(
		math.clamp(localPoint.X, -halfSizeX, halfSizeX),
		math.clamp(localPoint.Y, -halfSizeY, halfSizeY),
		math.clamp(localPoint.Z, -halfSizeZ, halfSizeZ)
	)
	return boxCF * closestPoint
end