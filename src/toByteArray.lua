-- Dependencies
local MAX_TUPLE

--[[
	Returns a table of all the bytes of each character in the string.
	Example: "Hello" -> {72, 101, 108, 108, 111}
	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/StringUtil.lua
]]
function ToByteArray(str: string) -- TODO: Include return type
	local len = #str

	if len == 0 then
		return {}
	end

	if len <= MAX_TUPLE then
		return table.pack(string.byte(str, 1, #str))
	end

	local bytes = table.create(len)
	for i = 1, len do
		bytes[i] = string.byte(string.sub(str, i, i))
	end

	return bytes
end