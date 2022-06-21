--[[
	Scale model from a pivot.
	Source: https://devforum.community/t/algorithms-mega-thread/325/9
]]
function ScaleModel(model: Model, scale: number, origin: Vector3)
	origin = origin or model.PrimaryPart.Position
	for _, part: BasePart in ipairs(model:GetDescendants()) do
		if part:IsA("BasePart") then
			local pos = part.Position
			local rotCf = part.CFrame - pos
			local fromOriginDir = pos - origin
			part.Size *= Vector3.one * scale
			part.CFrame = rotCf + origin + fromOriginDir * scale
		end
	end
end