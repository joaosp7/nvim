return {
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },

      on_attach = function(bufnr)
        local gitsigns = require("gitsigns")

        local function map(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, {
            buffer = bufnr,
            desc = desc,
            silent = true,
          })
        end

        map("n", "]c", function()
          if vim.wo.diff then
            vim.cmd.normal({ "]c", bang = true })
          else
            gitsigns.nav_hunk("next")
          end
        end, "Próximo hunk Git")

        map("n", "[c", function()
          if vim.wo.diff then
            vim.cmd.normal({ "[c", bang = true })
          else
            gitsigns.nav_hunk("prev")
          end
        end, "Hunk Git anterior")

        map("n", "<leader>hp", gitsigns.preview_hunk, "Preview do hunk Git")
        map("n", "<leader>hd", gitsigns.diffthis, "Diff do arquivo atual")
        map({ "n", "v" }, "<leader>hs", gitsigns.stage_hunk, "Stage do hunk Git")
        map({ "n", "v" }, "<leader>hr", gitsigns.reset_hunk, "Reverter hunk Git")
        map("n", "<leader>hb", gitsigns.blame_line, "Blame da linha atual")
      end,
    },
  },

  {
    "sindrets/diffview.nvim",
    cmd = {
      "DiffviewOpen",
      "DiffviewClose",
      "DiffviewFileHistory",
    },
    keys = {
      {
        "<leader>gd",
        "<cmd>DiffviewOpen<cr>",
        desc = "Abrir Diffview",
      },
      {
        "<leader>dc",
        "<cmd>DiffviewClose<cr>",
        desc = "Fechar Diffview",
      },
      {
        "<leader>gh",
        "<cmd>DiffviewFileHistory<cr>",
        desc = "Histórico Git",
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
