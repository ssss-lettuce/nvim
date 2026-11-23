require('options')
require('keymaps')

vim.pack.add({
  { src = 'https://github.com/nvim-mini/mini.nvim', version = 'stable' },
	'https://github.com/stevearc/oil.nvim',
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/thesimonho/kanagawa-paper.nvim',
  'https://github.com/ibhagwan/fzf-lua',
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/chomosuke/typst-preview.nvim',
})
vim.cmd.colorscheme("kanagawa-paper-ink")
vim.lsp.enable({ "lua_ls", "jdtls", "marksman", "tinymist" })

require('mini.pairs').setup({})
require('mini.operators').setup({})
require('mini.surround').setup({})
require('mini.completion').setup({})
require("oil").setup()

vim.keymap.set('i', '<CR>', function()
  if vim.fn.pumvisible() ~= 0 then
    return '<C-e><CR>'
  end
  return '<CR>'
end, { expr = true, replace_keycodes = true })
