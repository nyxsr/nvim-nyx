local map = vim.keymap.set

-- Set space as my leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable the space key
map({ "n", "v" }, "<Space>", "<Nop>", { expr = true, silent = true })

-- Better split navigation
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Quit neovim
map("n", "<leader>qq", vim.cmd.qa, { desc = "Quit neovim" })

-- Quick write
map("n", "<leader>w", vim.cmd.w, { desc = "Save the current file" })

-- Resize splits with arrow keys
map("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
map(
  "n",
  "<C-Left>",
  "<cmd>vertical resize -2<CR>",
  { desc = "Decrease window width" }
)
map(
  "n",
  "<C-Right>",
  "<cmd>vertical resize +2<CR>",
  { desc = "Increase window width" }
)

-- Open lazy.nvim
map("n", "<leader>l", vim.cmd.Lazy, { desc = "Open lazy.nvim" })

-- Better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
map(
  "n",
  "n",
  "'Nn'[v:searchforward].'zv'",
  { expr = true, desc = "Next search result" }
)
map(
  { "x", "o" },
  "n",
  "'Nn'[v:searchforward]",
  { expr = true, desc = "Next search result" }
)
map(
  "n",
  "N",
  "'nN'[v:searchforward].'zv'",
  { expr = true, desc = "Previous search result" }
)
map(
  { "x", "o" },
  "N",
  "'nN'[v:searchforward]",
  { expr = true, desc = "Previous search result" }
)

-- Switch to other buffer
map("n", "<leader>bb", "<cmd>e #<CR>", { desc = "Switch to other buffer" })

-- Better up/down
map(
  { "n", "x" },
  "j",
  'v:count == 0 ? "gj" : "j"',
  { desc = "Down", expr = true, silent = true }
)
map(
  { "n", "x" },
  "k",
  'v:count == 0 ? "gk" : "k"',
  { desc = "Up", expr = true, silent = true }
)

-- Add undo breakpoints
map("i", ",", ",<C-g>u")
map("i", ".", ".<C-g>u")
map("i", ";", ";<C-g>u")

-- Do not copy anything with x or c
map({ "n", "v" }, "x", '"_x', { silent = true })
map({ "n", "v" }, "c", '"_c', { silent = true })

-- Only cut with dd when the line contains something
---@return string
map("n", "dd", function()
  if vim.fn.getline(".") == "" then
    return '"_dd'
  end
  return "dd"
end, { expr = true })

-- Add a blank line above current line
map("n", "=", "mzO<Esc>`z", { desc = "Blank line above", silent = true })
map("n", "_", "mzo<Esc>`z", { desc = "Blank line below", silent = true })

-- Terminal mappings
map("t", "<C-h>", "<cmd>wincmd h<CR>", { desc = "Go to left window" })
map("t", "<C-j>", "<cmd>wincmd j<CR>", { desc = "Go to lower window" })
map("t", "<C-k>", "<cmd>wincmd k<CR>", { desc = "Go to upper window" })
map("t", "<C-l>", "<cmd>wincmd l<CR>", { desc = "Go to right window" })

-- Format Document
vim.keymap.set("n", "<leader>F", function()
  vim.lsp.buf.format()
end, { desc = "Format with Prettier" })
