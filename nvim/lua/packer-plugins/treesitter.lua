--Ensuring Treesitter Is Installed
local status,ts = pcall(require,'nvim-treesitter.configs')
if (not status) then
	print("Treesitter Is Not Working")
end

--Treesitter Setup
ts.setup{
	ensure_installed = {
		"lua","html","css","javascript","python"
	},
	highlight = {
		enable = true
	}
}
