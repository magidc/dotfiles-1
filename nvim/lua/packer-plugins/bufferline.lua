--Ensuring Bufferline Is Installed 
local status,bufferline = pcall(require,"bufferline")
if (not status) then
	print("Bufferline Is Not Working")
	return
end

--Bufferline Setup
bufferline.setup{
	options = {
		mode = 'tabs',
		separator_style = 'thin',
		always_show_bufferline = false,
		show_buffer_close_icons = false,
		show_close_icon = false,
		color_icons = true
	}
}
