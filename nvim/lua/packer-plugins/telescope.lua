--Ensuring Telescope Is Working
local status,telescope = pcall(require,'telescope')
if (not status) then 
	print("Telescope Is Not Working")
	return
end

--Telescope Setup
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup{
	extensions = {
		file_browser = {
			theme = 'dropdown',
			hijack_netrw = true,
			previewer = false,
		}
	}
}

telescope.load_extension("file_browser")

vim.keymap.set('n', 'ff',
  function()
    builtin.find_files()
  end)
vim.keymap.set("n", "sf", function()
  telescope.extensions.file_browser.file_browser({
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
  })
end)
