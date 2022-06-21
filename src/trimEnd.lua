--[[
	The same as Trim, but only trims the end of the string.
	Example: "  hello world  " -> "  hello world"
	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/StringUtil.lua
]]
function TrimEnd(str: string): string
	return string.match(str, "(.-)%s*$")
end