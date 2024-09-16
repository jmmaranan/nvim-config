-- return {
--   -- add gruvbox
--   { "ellisonleao/gruvbox.nvim" },
--
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "gruvbox",
--     },
--   },
-- }

-- return {
--   "maxmx03/solarized.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
--   config = function(_, opts)
--     vim.o.termguicolors = true
--     vim.o.background = "light"
--     require("solarized").setup(opts)
--     vim.cmd.colorscheme("solarized")
--   end,
-- }

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      treesitter = true,
      notify = false,
    },
  },
  config = function(_, opts)
    vim.o.termguicolors = true
    vim.o.background = "light"
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin-latte")
  end,
}
