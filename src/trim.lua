--[[
	Trims whitespace from the start and end of the string.
	Example: "  hello world  " -> "hello world"
	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/StringUtil.lua
]]
function Trim(str: string): string
	return string.match(str, "^%s*(.-)%s*$")
end