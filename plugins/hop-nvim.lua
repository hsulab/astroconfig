return {
  {
    "smoka7/hop.nvim",
    event = "BufEnter", -- NOTE: It seems to not load without this.
    version = "*",
    opts = {},
    config = function()
      require("hop").setup({})
      vim.api.nvim_set_keymap("n", "W", "<cmd>HopWord<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "E", "<cmd>HopLine<cr>", { silent = true })
    end,
  }
}
