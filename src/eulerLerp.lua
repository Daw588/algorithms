-- Dependencies
local EulerRound, EulerDistance

--[[
	Returns a number between two radians in proportion to the alpha (a number from 0 to 1).
	Source: https://devforum.community/t/algorithms-mega-thread/325/6
]]
function EulerLerp(radA: number, radB: number, alpha: number): number
	return EulerRound(radA + (EulerDistance(radB, radA) * alpha))
end