return {
  "github/copilot.vim",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    -- Optional: Disable the default <Tab> mapping if you use an autocompletion plugin like nvim-cmp that also uses Tab.
    -- vim.g.copilot_no_tab_map = true
    
    -- Optional: Map a different key (like Ctrl+J) to accept Copilot suggestions
    -- vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
  end,
}
