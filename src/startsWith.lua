-- Dependencies
local Escape

--[[
	Checks if a string starts with a certain string.

	Example: "Hello world", "He" -> true
	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/StringUtil.lua
]]
function StartsWith(str: string, starts: string): boolean
	return string.match(str, "^" .. Escape(starts)) ~= nil
end