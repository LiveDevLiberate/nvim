return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css", "python",
        "rust", "c", "cpp"
      },
    },
  },

  {
    "hedyhli/outline.nvim",
    keys = { { "<leader>co", "<cmd>Outline<cr>", desc = "Toggle Outline" } },
    cmd = "Outline",
    opts = {
      keymaps = {
        up_and_jump = "<up>",
        down_and_jump = "<down>",
      },
      outline_items = {
        show_symbol_lineno = false,
      }
    }
  },

  {
    "folke/trouble.nvim",
    keys = {
      { "<leader>cs", false },
    },
  },

  {
    "numirias/semshi",
    opts = {}
  }
}
