return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("ts_ls")

      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Ir para definição" })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Listar referências" })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Renomear símbolo" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
    end,
  },
}