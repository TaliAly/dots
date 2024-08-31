require("init.keys")

-- golang
Map("n", "<leader>ee", "iif err != nil {<CR> log.Fatal(err)<CR>}<esc>", "[e]rr golang")
