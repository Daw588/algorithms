--[[
	Pushes a point to lie within the bounding box.
	Source: https://devforum.community/t/algorithms-mega-thread/325/14
]]
function PushPointToLieOnBoundingBox(cframe: CFrame, size: Vector3, point: Vector3): (Vector3, Vector3)
	local transform = cframe:PointToObjectSpace(point) -- Transform into local space
	local halfSize = size * 0.5
	local x = transform.X < 0 and -halfSize.X or halfSize.X
	local y = transform.Y < 0 and -halfSize.Y or halfSize.Y
	local z = transform.Z < 0 and -halfSize.Z or halfSize.Z
	return cframe * Vector3.new(x, y, z), cframe.Position
end