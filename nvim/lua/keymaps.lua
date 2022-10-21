local keymap = vim.keymap
--Opening Files
keymap.set('n','<C-o>',':edit . <Return>',{silent = true})
--Opening Files in VSPLIT
keymap.set('n','<C-a>',':vsplit . <Return>',{silent = true})
--Opening Files in SPLIT
keymap.set('n','<S-a>',':split . <Return>',{silent = true})
--Opening Files in TABS
keymap.set('n','<S-t>',':tabedit . <Return>',{silent = true})
