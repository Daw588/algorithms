--[[
	Checks if a string contains another string.
	Example: "Hello world", "lo wor" -> true
	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/StringUtil.lua
]]
function Contains(str: string, piece: string): boolean
	return string.find(str, piece) ~= nil
end