--[[
	To test if a 3D point is inside a bounding box defined by a CFrame and size.
	Source: https://devforum.community/t/algorithms-mega-thread/325/3
]]
function TestPointOBB(point: Vector3, cframe: CFrame, size: Vector3): boolean
	-- Transform pt to cf's local space
	local objPos = cframe:PointToObjectSpace(point)

	-- Test axis magnitudes against extents
	return
		math.abs(objPos.X) <= size.X * 0.5 and
		math.abs(objPos.Y) <= size.Y * 0.5 and
		math.abs(objPos.Z) <= size.Z * 0.5
end