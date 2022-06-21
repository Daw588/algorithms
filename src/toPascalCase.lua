-- Dependencies
local ToCamelCase

--[[
	Returns a string in PascalCase.
	Example: "Hello_world-abc" -> "HelloWorldAbc"
	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/StringUtil.lua
]]
function ToPascalCase(str: string): string
	str = ToCamelCase(str)
	return string.upper(string.sub(str, 1, 1)).. string.sub(str, 2)
end