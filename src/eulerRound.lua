--[[
	Source: https://devforum.community/t/algorithms-mega-thread/325/6
]]
function EulerRound(radNum: number): number
	if math.abs(math.deg(radNum)) > 180 then
		return -math.sign(radNum) * (math.rad(180) - math.abs(radNum - (math.sign(radNum) * math.rad(180))))
	else
		return radNum
	end
end