-- Dependencies
local EulerRound

--[[
	Source: https://devforum.community/t/algorithms-mega-thread/325/6
]]
function EulerDistance(radA: number, radB: number): number
	local resA = EulerRound(radB) - EulerRound(radA)
	local resB = -math.sign(resA) * (math.rad(360) - math.abs(resA))
	if math.abs(resA) < math.abs(resB) then
		return resA
	else
		return resB
	end
end