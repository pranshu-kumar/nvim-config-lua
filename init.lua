vim.wo.number = true

require('plugins')
require('keybindings')
require('plugin.feline.init')
require('plugin.onedark.init')

-- LSP
require('plugin.nvim_lsp.lspinstall')
require('plugin.compe.init')
--require('plugin.nvim-tree')
--require('lua.plugins.feline.init')


-- Editor
require('plugin.bufferline.init')
require('plugin.auto-pairs.init')
require('plugin.gitsigns.init')

-- UI
require('plugin.toggleterm.init')
