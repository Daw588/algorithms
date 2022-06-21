--[[
	Returns a string in snake_case or SNAKE_CASE.
	
	Example:
		"Hello_world-abc" -> "hello_world_abc"
		"Hello_world-abc", true -> "HELLO_WORLD_ABC"

	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/StringUtil.lua
]]
function ToSnakeCase(str: string, uppercase: boolean): string
	str = string.gsub(string.gsub(str, "[%-_]+", "_"), "([^%u%-_])(%u)", function(s1, s2)
		return s1 .. "_" .. string.lower(s2)
	end)
	str = if uppercase then string.upper(str) else string.lower(str)
	return str
end