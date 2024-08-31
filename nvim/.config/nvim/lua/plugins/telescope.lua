require("init.keys")
require("telescope").setup({
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_cursor(),
		},
	},
})

-- Enable telescope extensions, if they are installed
pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "ui-select")

-- See `:help telescope.builtin`
local builtin = require("telescope.builtin")
Map(
	"n",
	"<leader>ff",
	":Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍 <CR>",
	"[F]ind [F]iles"
)
Map("n", "<leader>fg", builtin.git_files, "[F]ind [G]it files")
Map("n", "<leader>fs", builtin.live_grep, "[F]ind [S]earch")
Map("n", "<leader>bn", builtin.buffers, "[B]uffer [N] search")
