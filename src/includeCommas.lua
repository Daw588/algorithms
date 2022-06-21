--[[
	Adds commas to a number.
	Source: https://stackoverflow.com/a/10992898/10435318
]]
function IncludeCommas(value: number): string
	local _, _, minus, int, fraction = string.find(tostring(value), "([-]?)(%d+)([.]?%d*)")

	-- Reverse the int-string and append a comma to all blocks of 3 digits
	int = string.gsub(string.reverse(int), "(%d%d%d)", "%1,")

	--[[
		Reverse the int-string back remove an optional comma and put the
		Optional minus and fractional part back
	]]
	return minus.. string.gsub(string.reverse(int), "^,", "").. fraction
end