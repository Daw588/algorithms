-- Dependencies
local MAX_TUPLE

--[[
	Transforms an array of bytes into a string.
	Example: {97, 98, 99} -> "abc"
	Source: https://github.com/Sleitnick/AeroGameFramework/blob/master/src/ReplicatedStorage/Aero/Shared/StringUtil.lua
]]
function ByteArrayToString(bytes: {number}): string
	local size = #bytes

	if size <= MAX_TUPLE then
		return string.char(table.unpack(bytes))
	end

	local numChunks = math.ceil(size / MAX_TUPLE)
	local stringBuild = table.create(numChunks)
	for i = 1, numChunks do
		local chunk = string.char(table.unpack(bytes, ((i - 1) * MAX_TUPLE) + 1, math.min(size, ((i - 1) * MAX_TUPLE) + MAX_TUPLE)))
		stringBuild[i] = chunk
	end

	return table.concat(stringBuild, "")
end