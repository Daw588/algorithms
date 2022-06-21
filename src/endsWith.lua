-- Dependencies
local Escape

--[[
	Checks if a string ends with a certain string.

	Example:
		"Hello world", "rld" -> true
		"Hello world!", "rld" -> false

	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/StringUtil.lua
]]
function EndsWith(str: string, ends: string): boolean
	return string.match(str, Escape(ends) .. "$") ~= nil
end