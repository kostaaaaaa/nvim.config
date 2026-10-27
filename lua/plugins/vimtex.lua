return{
    "lervag/vimtex",
    config = function()
      vim.g.vimtex_view_method = "general"
      vim.g.vimtex_view_general_viewer = "kpdf"
      vim.g.vimtex_compiler_method = 'latexmk'

      -- Keybinds for vimtex
      vim.api.nvim_set_keymap('n', '<leader>ll', '<cmd>VimtexCompile<cr>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>lv', '<cmd>VimtexView<cr>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>lc', '<cmd>VimtexClean<cr>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>lt', '<cmd>VimtexTocToggle<cr>', { noremap = true, silent = true })
    end,
  }
