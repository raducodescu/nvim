local function map(mode, l, r, opts)
  opts = opts or {}
  vim.keymap.set(mode, l, r, opts)
end

-- Toggle ';' in current line
map("n", ";;", function()
  local cursor = vim.api.nvim_win_get_cursor(0)
  local line = vim.api.nvim_get_current_line()
  local last_char = string.sub(line, -1, -1)
  if last_char == ";" then
    vim.cmd("s/;$//")
    vim.cmd(":nohlsearch")
  else
    vim.cmd("norm A;")
  end
  vim.api.nvim_win_set_cursor(0, cursor)
end, { desc = "Toggle semicolon in current line" })

map("n", "\\q", "<cmd>tabclose<cr>", { desc = "Close Tab" })
-- tabs

-- Map \l to switch to the next tab
map("n", "\\l", ":tabnext<CR>", { desc = "Next tab", noremap = true, silent = true })
-- Map \h to switch to the previous tab
map("n", "\\h", ":tabprevious<CR>", { desc = "Previous tab", noremap = true, silent = true })

return {}
