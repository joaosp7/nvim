return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({
      -- Size can be a number or a function
      size = 15,
      -- This is the hotkey you'll use to open/close the terminal
      open_mapping = [[<c-t>]], -- Ctrl + t
      hide_numbers = true, 
      shade_terminals = true,
      direction = 'horizontal', -- You can change this to 'float' or 'vertical'
      close_on_exit = true, 
      shell = vim.o.shell, 
    })

    -- Handy shortcut to easily escape terminal mode using just 'jk'
    function _G.set_terminal_keymaps()
      local opts = {buffer = 0}
      vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
    end

    -- Apply these keymaps only when a terminal opens
    vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
  end
}