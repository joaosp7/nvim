return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "vim",
          "vimdoc",
          "javascript",
          "typescript",
          "json",
          "bash",
          "markdown",
          "markdown_inline",
        },
        highlight = {
          enable = true,
        },
      })
    end,
  },
}