-- Dependencies
local ReflectVector

--[[
	Reflects a CFrame over a plane defined by a position and normal vector.
	Source: https://devforum.community/t/algorithms-mega-thread/325/12
]]
function ReflectCFrame(cf: CFrame, planePos: Vector3, planeNormal: Vector3)
	return CFrame.fromMatrix(
		planePos + ReflectVector(cf.Position - planePos, planeNormal),
		-ReflectVector(cf.XVector, planeNormal),
		ReflectVector(cf.YVector, planeNormal),
		ReflectVector(cf.ZVector, planeNormal)
	)
end