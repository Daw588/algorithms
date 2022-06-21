--[[
	Returns a string in kebab-case or KEBAB-CASE.

	Example:
		"Hello_world-abc" -> "hello-world-abc"
		"Hello_world-abc", true -> "HELLO-WORLD-ABC"

	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/StringUtil.lua
]]
function ToKebabCase(str: string, uppercase: boolean)
	str = string.gsub(string.gsub(str, "[%-_]+", "_"), "([^%u%-_])(%u)", function(s1, s2)
		return s1 .. "-" .. string.lower(s2)
	end)
	str = if uppercase then string.upper(str) else string.lower(str)
	return str
end