return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim", -- required by telescope
    "MunifTanjim/nui.nvim",

    -- optional
    "nvim-treesitter/nvim-treesitter",
    "rcarriga/nvim-notify",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    -- configuration goes here
    lang = "javascript",
  },
  config = function(_, opts)
    vim.keymap.set("n", "<leader>ll", "<cmd>Leet lang<cr>")
    -- vim.keymap.set("n", "<leader>lq", "<cmd>LcQuestionTabs<cr>")
    -- vim.keymap.set("n", "<leader>lm", "<cmd>LcMenu<cr>")
    -- vim.keymap.set("n", "<leader>lc", "<cmd>LcConsole<cr>")
    -- vim.keymap.set("n", "<leader>ld", "<cmd>LcDescriptionToggle<cr>")
    vim.keymap.set("n", "<leader>lr", "<cmd>Leet run<cr>")
    vim.keymap.set("n", "<leader>ls", "<cmd>Leet submit<cr>")
    require("leetcode").setup(opts)
  end,
  -- config = function()
  --   vim.keymap.set("n", "<leader>ll", "<cmd>Leet lang<cr>", { desc = "Change Leetcode language" })
  -- end,
}
