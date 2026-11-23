local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<leader>e",  ":Oil<CR>", opts)
keymap("n", "<leader>fg", "<Cmd>lua require('fzf-lua').live_grep()<CR>", opts)
keymap("n", "<leader>ff", "<Cmd>lua require('fzf-lua').files()<CR>", opts)
keymap("n", "<leader>a", "<CMD>lua vim.lsp.buf.code_action()<cr>", opts)
keymap("n", "<leader>f", "<CMD>lua vim.lsp.buf.format()<cr>", opts)
keymap("n", "<leader>K", "vim.lsp.buf.hover", opts)
