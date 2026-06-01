return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- Necessário para carregar os ícones dos arquivos
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- Mapeia a tecla 'Espaço + e' para abrir e fechar a barra lateral
    vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { silent = true })
  end
}