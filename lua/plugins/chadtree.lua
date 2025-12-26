-- Chadtree configuration for Lazy.nvim
-- Add this to your Lazy.nvim plugins configuration

return {
  {
    "ms-jpq/chadtree",
    branch = "chad",
    build = "python3 -m chadtree deps",
    config = function()
      -- Optional: Set up keybindings
      vim.keymap.set("n", "<leader>b", "<cmd>CHADopen<cr>", { desc = "Open CHADTree" })
      
      -- Optional: Configure chadtree settings
      vim.api.nvim_set_var("chadtree_settings", {
        ["options.close_on_open"] = false,
        ["view.width"] = 30,
      })
    end,
  },

}

