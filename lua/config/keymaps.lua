-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Move selected lines with shift+j or shift+k
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join line while keeping the cursor in the same position
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor centred while scrolling up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Next and previous instance of the highlighted letter
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>")

local toggle_bg =
  [[:lua if vim.o.background == "dark" then vim.o.background = "light" else vim.o.background = "dark" end<CR>]]
vim.keymap.set("n", "<leader>bg", toggle_bg, { desc = "Toggle Light or Dark Background", silent = true })
vim.keymap.set("n", "<leader>c1", ":colorscheme gruvbox<cr>", { desc = "Change to Gruvbox Theme", silent = true })
vim.keymap.set("n", "<leader>c2", ":colorscheme tokyonight<cr>", { desc = "Change to TokyoNight Theme", silent = true })
vim.keymap.set("n", "<leader>c3", ":colorscheme catppuccin<cr>", { desc = "Change to Catppuccin Theme", silent = true })
vim.keymap.set("n", "<leader>c4", ":colorscheme nord<cr>", { desc = "Change to Nord Theme", silent = true })

vim.keymap.set({ "n", "v" }, "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<leader>a", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
vim.keymap.set("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })

-- Expand 'cc' into 'CodeCompanion' in the command line
vim.cmd([[cab cc CodeCompanion]])
