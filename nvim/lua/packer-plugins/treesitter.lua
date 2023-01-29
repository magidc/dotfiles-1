--Ensuring Treesitter Is Installed
local status,ts = pcall(require,'nvim-treesitter.configs')
if (not status) then
	print("Treesitter Is Not Working")
end

--Treesitter Setup
ts.setup{
	ensure_installed = {
		"lua","help","c","vim","html","css","javascript","python","java","markdown"
	},
	highlight = {
		enable = true
	}
}
