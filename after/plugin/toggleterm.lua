local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
 return
end

toggleterm.setup({
	open_mapping = [[<c-p>]],
	hide_numbers = false,
	start_in_insert = true,
	close_on_exit = true,
	shell = "/usr/bin/bash"
})
-- vim.keymap.set("n", "<C-p>", vim.cmd.ToggleTerm)

