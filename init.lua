-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Cycle through buffers with Ctrl+Tab
vim.api.nvim_set_keymap("n", "<C-Tab>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-Tab>", ":bprevious<CR>", { noremap = true, silent = true })
