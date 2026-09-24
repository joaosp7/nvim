return {
  "okuuva/auto-save.nvim",

  cmd = "ASToggle",

  event = {
    "InsertLeave",
    "TextChanged",
    "BufLeave",
    "FocusLost",
  },

  opts = {
    enabled = true,
    debounce_delay = 3000,

    execution_message = {
      enabled = false,
    },

    trigger_events = {
      immediate_save = { "BufLeave", "FocusLost" },
      defer_save = { "InsertLeave", "TextChanged" },
    },

    write_all_buffers = false,

    condition = function(buf)
      local excluded_filetypes = {
        gitcommit = true,
        gitrebase = true,
        help = true,
        qf = true,
        oil = true,
      }

      local buffer = vim.bo[buf]

      return buffer.buftype == ""
        and buffer.modifiable
        and not buffer.readonly
        and not excluded_filetypes[buffer.filetype]
    end,
  },
}
