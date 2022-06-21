--[[
	Given a 2D position on a SurfaceGui, convert it to 3D world space.
	Source: https://devforum.community/t/algorithms-mega-thread/325/7
]]
function GuiPointToWorld(gui: SurfaceGui, point: Vector2): CFrame
	local adornee = assert(gui.Adornee)

	local normalizedPoint = point / gui.AbsoluteSize
	local dir = Vector3.FromNormalId(gui.Face)

	local projY = math.abs(dir.Z + dir.X)
	local projZ = dir.X + math.abs(dir.Y)

	local origin = Vector3.new(
		dir.X - dir.Y - dir.Z,
		dir.Y + projY,
		dir.Z + projZ
	) * 0.5

	local surfX = Vector3.new(dir.Z, 0, -projZ) * normalizedPoint.X
	local surfY = Vector3.new(dir.Y, -projY, 0) * normalizedPoint.Y

	local pos = origin + surfX + surfY

	return adornee.CFrame * (adornee.Size * pos)
end