local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

--require('feline')

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- feline statusline
  use 'famiu/feline.nvim'

  -- nvim-dev-icons
  use 'kyazdani42/nvim-web-devicons'

  -- File Tree
  use 'kyazdani42/nvim-tree.lua'
  
  -- Using Packer
  use 'navarasu/onedark.nvim'

  -- which key plugin
  use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

   -- lsp install
   use 'neovim/nvim-lspconfig'
   use 'kabouzeid/nvim-lspinstall'

   
   -- autocomplete using compe
   use 'hrsh7th/nvim-compe'

   
   -- tabline
   use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
   --use 'romgrk/barbar.nvim'
   --use 'crispgm/nvim-tabline'
   --require'tabline'.setup{}

   --terminal integration
   use {"akinsho/nvim-toggleterm.lua"}

   -- cursorline
   use {"yamatsum/nvim-cursorline"}

   -- autopairs
   use {"windwp/nvim-autopairs"}

   -- markdown preview
   use {'npxbr/glow.nvim'}

   -- git plugin
   use {'lewis6991/gitsigns.nvim'}
   use {'nvim-lua/plenary.nvim'}


end)

