vim.g.mapleader = " "

-- function that open ToggleExplorer
-- source https://www.reddit.com/r/neovim/comments/z86ife/check_if_explore_is_open/?sort=old

local function toggleexplorer()
    if vim.api.nvim_buf_get_option(0, 'filetype') == 'netrw' then
        vim.api.nvim_exec('Rexplore', false)
    else
        vim.api.nvim_exec(':Explore', false)
    end
end

vim.keymap.set('n', '<F2>', toggleexplorer)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- vim.keymap.set("n", "<leader>vwm", function()
--     require("vim-with-me").StartVimWithMe()
-- end)
-- vim.keymap.set("n", "<leader>svwm", function()
--     require("vim-with-me").StopVimWithMe()
-- end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<C-x>", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/Ai/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- Window action remap
vim.keymap.set("n","<leader>v", vim.cmd.vsp)
vim.keymap.set("n","<leader><S-v>", vim.cmd.sp)

vim.keymap.set({"n", "v", "x", "c", "s", "o"},"<leader><left>", "<C-w><left>")
vim.keymap.set({"n", "v", "x", "c", "s", "o"},"<leader><right>", "<C-w><right>")
vim.keymap.set({"n", "v", "x", "c", "s", "o"},"<leader><up>", "<C-w><up>")
vim.keymap.set({"n", "v", "x", "c", "s", "o"},"<leader><down>", "<C-w><down>")

vim.keymap.set("n", "<Leader>k", function() 
	vim.cmd.Man({vim.fn.input("man :") })
end)

-- set Esc to change btw modes in toggle term 
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>");

--for 42 header
vim.keymap.set("n", "<F3>", vim.cmd.Stdheader);

--cycles between two buffers
vim.keymap.set({"n", "v", "x", "c", "s", "o"}, "<leader>b", vim.cmd.bnext);

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

-- vim.g.toggleterm_keymap = {
--   insert = {"<Esc>"},
--   normal = {"<Esc>"},
--   visual = {"<Esc>"},
--   cmdline = {"<Esc>"},
--   tinsert = {"<Esc>"},
--   tnormal = {"<Esc>"},
--   tvisual = {"<Esc>"},
-- }

