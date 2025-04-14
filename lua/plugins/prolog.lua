return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "VonHeikemen/lsp-zero.nvim",
    },
    config = function()
      -- Filetype detection
      vim.filetype.add({
        extension = {
          pl = "prolog",    -- Recognizes .pl files as Prolog
          prolog = "prolog" -- Recognizes .prolog files as Prolog
        },
        filename = {
          ["pack.pl"] = "prolog" -- Recognizes pack.pl specifically as Prolog
        },
        pattern = {
          [".*%.prolog$"] = "prolog" -- Regex pattern for .prolog files
        }
      })
      local lsp = require('lsp-zero').preset({})

      lsp.on_attach(function(client, bufnr)
        lsp.default_keymaps({ buffer = bufnr })
      end)

      -- Configure Prolog LSP
      require('lspconfig.configs').prolog = {
        default_config = {
          cmd = {
            "swipl",
            "-g", "use_module(library(lsp_server)).",
            "-g", "lsp_server:main",
            "-t", "halt",
            "--", "stdio",
          },
          filetypes = { 'prolog' },
          root_dir = function(fname)
            return require('lspconfig.util').root_pattern('.git', 'pack.pl')(fname) or
                require('lspconfig.util').path.dirname(fname)
          end,
          settings = {},
        }
      }

      lsp.configure('prolog', {})

      lsp.setup()
    end
  }
}
