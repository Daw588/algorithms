--[[
	Clamps a point inside of a given bounding box.
	Source: https://devforum.roblox.com/t/finding-the-closest-vector3-point-on-a-part-from-the-character/130679/3
]]
function ClampPointToBoundingBox(cframe: CFrame, size: Vector3, point: Vector3): (Vector3, Vector3)
	local transform = cframe:PointToObjectSpace(point) -- Transform into local space
	local halfSize = size * 0.5

	-- Clamp & transform into world space
	return cframe * Vector3.new(
		math.clamp(transform.X, -halfSize.X, halfSize.X),
		math.clamp(transform.Y, -halfSize.Y, halfSize.Y),
		math.clamp(transform.Z, -halfSize.Z, halfSize.Z)
	), cframe.Position
end