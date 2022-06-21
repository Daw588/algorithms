--[[
	Returns a string in camelCase.
	Example: "Hello_world-abc" -> "helloWorldAbc"
	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/StringUtil.lua
]]
function ToCamelCase(str: string): string
	str = string.gsub(str, "[%-_]+([^%-_])", function(s)
		return string.upper(s)
	end)
	return string.lower(string.sub(str, 1, 1)) .. string.sub(str, 2)
end