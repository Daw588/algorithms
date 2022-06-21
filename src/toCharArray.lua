--[[
	Returns a table of all the characters in the string.
	Example: "Hello" -> {"H", "e", "l", "l", "o"}
	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/StringUtil.lua
]]
function ToCharArray(str: string): {string}
	local len = #str
	local chars = table.create(len)
	for i = 1, len do
		chars[i] = string.sub(str, i, i)
	end
	return chars
end