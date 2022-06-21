--[[
	The same as Trim, but only trims the start of the string.
	Example: "  hello world  " -> "hello world  "
	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/StringUtil.lua
]]
function TrimStart(str: string): string
	return string.match(str, "^%s*(.+)")
end