vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Salvar arquivo" })
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "Fechar janela" })

vim.keymap.set("n", "<leader>pv", "<cmd>Explore<cr>", { desc = "Explorar arquivos" })

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Buscar arquivos" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Buscar texto" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Listar buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Buscar ajuda" })