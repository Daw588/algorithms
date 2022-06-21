--[[
	Reflects Vector3.
	Source: https://devforum.community/t/algorithms-mega-thread/325/12
]]
function ReflectVector(v: Vector3, axis: Vector3): Vector3
	return v - 2 * (axis * v:Dot(axis))
end