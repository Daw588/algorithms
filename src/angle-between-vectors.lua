local function angleBetweenVectors(a: Vector3, b: Vector3): number
	return math.atan2(a:Cross(b).Magnitude, a:Dot(b))
end
