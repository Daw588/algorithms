--[[
	Replaces all whitespace with a single space. This does not trim the string.
	Example: "This     is    a   \n  test" -> "This is a test"
	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/StringUtil.lua
]]
function RemoveExcessWhitespace(str: string): (string, number)
	return string.gsub(str, "%s+", " ")
end