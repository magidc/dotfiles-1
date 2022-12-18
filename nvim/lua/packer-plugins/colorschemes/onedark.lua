--Ensuring OneDark Is Working
local status,n = pcall(require,"onedark")
if (not status) then
	print("OneDark Is Not Working")
	return
end

--OneDark Setup
n.setup{
	transparent = true,
	lualine = {
		transparent = false,
	},
}
