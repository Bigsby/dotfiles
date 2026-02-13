vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>d", ":bd<cr>")
vim.keymap.set("n", "<leader>e", ":e<space>")
vim.keymap.set("n", "<leader>s", ":split<space>")
vim.keymap.set("n", "<leader>v", ":vsplit<space>")
vim.keymap.set("n", "<leader>h", ":nohl<cr>")
vim.keymap.set("n", "<leader>t", ":tabnew<space>")
vim.keymap.set("n", "<tab>", ":tabnext<cr>")
vim.keymap.set("n", "<s-tab>", ":tabprevious<cr>")


vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlights text when yanking",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
