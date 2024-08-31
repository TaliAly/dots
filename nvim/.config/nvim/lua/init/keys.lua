local opt = function(name)
	return { noremap = true, silent = true, desc = name }
end

function Map(mode, keys, func, desc)
	vim.keymap.set(mode, keys, func, { noremap = true, silent = true, desc = desc })
end

-- Move line while in visual mode with shift
Map("v", "J", ":m '>+1<CR>gv=gv", "move buffer lines with SHIFT [DOWN]")
Map("v", "K", ":m '<-2<CR>gv=gv", "move buffer lines with SHIFT [UP]")

-- indent shortcut to not have to reach all the way to =ap
Map("n", "<leader>cf", ":vim.lsp.buf.format()<CR>", "[C]ode [F]ormat")
Map("n", "<leader>gh", ":vim.lsp.buf.hover()<CR>", "[C]ode [H]over")

-- replace word

Map("n", "<leader>ph", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "[P]aram [H] replace")

-- buffers actions
Map("n", "<leader>vs", ":vsplit<CR>", "[V]iew [S]plit")
Map("n", "<leader>bm", ":e#<CR>", "[B]uffer [M] prev")

-- About search in buffers check plugins/telescope
