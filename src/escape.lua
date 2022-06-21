--[[
	Escapes a string from pattern characters. In other words, it prefixes
	any special pattern characters with a %. For example, the dollar sign
	$ would become %$.

	Example: "Hello. World$ ^-^" -> "Hello%. World%$ %^%-%^"
	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/StringUtil.lua
]]
function Escape(str: string): (string, number)
	return string.gsub(str, "([%.%$%^%(%)%[%]%+%-%*%?%%])", "%%%1")
end