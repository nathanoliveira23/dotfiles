vim.cmd [[packadd packer.nvim]]
--vim.cmd[[colorscheme horizon]]
--vim.cmd[[colorscheme no-clown-fiesta]]
--vim.cmd[[colorscheme github]]

require("rose-pine").setup({
    styles = {
        bold = false,
        italic = false,
        transparency = false,
    },
})

vim.cmd("colorscheme rose-pine")

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
    
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    use("nvim-treesitter/playground")
    
    use {
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",
    }

    use {'neoclide/coc.nvim', branch = 'release'}

    use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
    })

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use "lunarvim/horizon.nvim"

    use "1612492/github.vim"

    use "rose-pine/neovim"
end)
