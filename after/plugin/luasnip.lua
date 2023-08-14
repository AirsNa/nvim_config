local ls = require "luasnip"
local types = require "luasnip.util.types"


ls.config.set_config{
	history = true,
	updateevents = "TextChanged,TextChangedI",
	enable_autosnippets = true
}

vim.keymap.set({"i", "s"}, "<c-k>", function()
	if ls.expand_or_jumpable(1) then
		ls.expand_or_jump()
	end
end
)

vim.keymap.set({"i", "s"}, "<c-j>", function()
	if ls.jumpable(-1) then
		ls.jump(-1)
	end
end
)

vim.keymap.set("i", "<c-l>", function()
	if ls.choice_active() then
		ls.change_choice()
	end
end)

vim.keymap.set("n", "<leader>r", "<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<CR>")


ls.snippets = {
	all = {
		-- your own snippet
		--ls.parser.parse_snippet("td", "/*TO--DO*/"),
		--ls.parser.parse_snippet("intf" , "int\t$1($2)\n{\n$0\n}"),
	},
}
