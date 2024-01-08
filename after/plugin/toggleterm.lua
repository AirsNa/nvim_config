local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
 return
end

toggleterm.setup({
	hide_numbers = false,
	start_in_insert = true,
	close_on_exit = true,
})
vim.keymap.set("n", "<C-p>", vim.cmd.ToggleTerm)

