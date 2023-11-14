local plugins = {
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'eslint-lsp',
        'lua-language-server',
        'typescript-language-server',
        'black',
        'pyright',
        'mypy',
        'ruff',
      }
    },
    lazy = false,
  },

  {
    'neovim/nvim-lspconfig',
    config = function ()
      require 'plugins.configs.lspconfig'
      require 'custom.configs.lspconfig'
    end,
  },

  {
    'natecraddock/workspaces.nvim',
    lazy = false,
    config = function (_, opts)
      require("workspaces").setup()
    end
  },

  {
    'tpope/vim-surround',
    lazy = false
  },

  {
    'nvie/vim-flake8',
    lazy = false,
  },

  {
    'nvimtools/none-ls.nvim',
    ft = {'python', 'javascript', 'typescript'},
    opts = function ()
      return require "custom.configs.none-ls"
    end,
  },

  {
    'neoclide/coc.nvim',
    enabled = false,
  },

  {
    'xiyaowong/transparent.nvim',
    lazy = false,
  },

  {
    'fedepujol/move.nvim',
    lazy = false
  },

  {
    'nvimdev/lspsaga.nvim',
    config = function()
        require('lspsaga').setup({})
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'nvim-tree/nvim-web-devicons',
    },
    lazy = false,
  },

  {
    'lunarvim/synthwave84.nvim',
    lazy = false,
    priority = 1000,
  },

  {
    "rcarriga/nvim-notify",
    lazy = false,
    config = function()
      vim.notify = require("notify")
    end,
  }
}

return plugins
