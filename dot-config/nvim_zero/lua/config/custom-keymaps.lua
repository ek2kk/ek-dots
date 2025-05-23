local keymap = vim.keymap

keymap.set("n", "<space><space>x", "<cmd>source %<CR>", { desc = "E[X]ecute the whole file (in .lua files)" })
keymap.set("n", "<space>x", ":.lua<CR>", { desc = "E[X]ecute current line (in .lua files)" })
keymap.set("v", "<space>x", ":lua<CR>", { desc = "E[X]ecute current selection (in .lua files)" })

keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
keymap.set("n", "<M-k>", "<cmd>cprev<CR>")

keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

keymap.set("n", "<leader>d", "<cmd>Telescope diagnostics bufnr=0<CR>", { desc = "Open [D]iagnostics" })

keymap.set("i", "jj", "<ESC>")

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
  end,
})

local job_id = 0
keymap.set("n", "<space>to", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 10)

  job_id = vim.bo.channel
end, { desc = "[O]pen [T]erminal" })

local current_command = ""
keymap.set("n", "<space>te", function()
  current_command = vim.fn.input("Command: ")
end, { desc = "Insert [T]erminal command to be [E]xecuted" })

keymap.set("n", "<space>tr", function()
  if current_command == "" then
    current_command = vim.fn.input("Command: ")
  end

  vim.fn.chansend(job_id, { current_command .. "\r\n" })
end, { desc = "[R]un [T]erminal command" })

keymap.set("n", "-", "<CMD>:lua MiniFiles.open()<CR>", { desc = "Open parent directory" })
