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
        'gopls'
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
      require("notify").setup({
        background_colour = "#000000"
      })
    end,
  },

  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },

  {
    'github/copilot.vim',
    lazy = false,
  },

  {
    'mattn/emmet-vim',
    lazy = false
  },

  {
    'filipdutescu/renamer.nvim',
    lazy = false,
    config = function ()
      vim.api.nvim_set_keymap('i', '<F2>', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('v', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
    end
  },

  {
    'simrat39/rust-tools.nvim',
    lazy = false,
    config = function ()
      local rt = require("rust-tools")

      rt.setup({
        server = {
          on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
          end,
        },
      })
    end
  },

  {
    'joshnavdev/indentation-multiline.nvim',
    config = function ()
      require('indentation-multiline').setup()
    end
  }
}

return plugins
