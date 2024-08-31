require("init.keys")
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	Map("n", "<leader>n", ":NvimTreeToggle<CR>", "[N] hide filetree")
end

--- OR setup with some options
require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	on_attach = my_on_attach,
	view = {
		side = "right",
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = false,
	},
	git = {
		enable = true,
		ignore = false,
		timeout = 400,
	},
})
