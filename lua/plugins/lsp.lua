return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason-org/mason.nvim",
      "mason-org/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      require("mason").setup()

      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "gopls",
          "rust_analyzer",
          "basedpyright",
          "ts_ls",
        },
      })

      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
              workspace = {
                checkThirdParty = false,
              },
            },
          },
        },
        gopls = {
          settings = {
            gopls = {
              gofumpt = true,
              staticcheck = true,
              analyses = {
                unusedparams = true,
                shadow = true,
              },
            },
          },
        },
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              check = {
                command = "clippy",
              },
            },
          },
        },
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "workspace",
                typeCheckingMode = "standard",
              },
            },
          },
        },
        ts_ls = {
          init_options = {
            preferences = {
              includeInlayParameterNameHints = "all",
              includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayVariableTypeHints = true,
            },
          },
        },
      }

      for name, config in pairs(servers) do
        config.capabilities = capabilities
        vim.lsp.config(name, config)
        vim.lsp.enable(name)
      end

      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(event)
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
            buffer = event.buf,
            desc = "Ir para definição",
          })
          vim.keymap.set("n", "gr", vim.lsp.buf.references, {
            buffer = event.buf,
            desc = "Listar referências",
          })
          vim.keymap.set("n", "K", vim.lsp.buf.hover, {
            buffer = event.buf,
            desc = "Mostrar documentação",
          })
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {
            buffer = event.buf,
            desc = "Renomear símbolo",
          })
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {
            buffer = event.buf,
            desc = "Code action",
          })
          vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, {
            buffer = event.buf,
            desc = "Mostrar diagnóstico",
          })
          vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {
            buffer = event.buf,
            desc = "Diagnóstico anterior",
          })
          vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {
            buffer = event.buf,
            desc = "Próximo diagnóstico",
          })
        end,
      })
    end,
  },
}
