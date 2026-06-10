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

    -- Configuração do Neo-tree para mostrar arquivos ocultos
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,          -- Garante que os itens filtrados fiquem visíveis por padrão
          hide_dotfiles = false,   -- NÃO oculta arquivos que começam com ponto (.env, .gitignore, etc.)
          hide_gitignored = false, -- Opcional: NÃO oculta arquivos no .gitignore (como node_modules, se quiser ver)
        },
      },
    })
  end
}