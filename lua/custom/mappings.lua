local M = {}

local opts = { noremap = true, silent = true }

M.move = {
  i = {
    ['<A-Down>'] = { "<cmd> MoveLine(1)<CR>", "Move current line one up" },
    ['<A-Up>'] = {"<cmd> MoveLine(-1)<CR>", "Move current line one down" },
  }
}

return M
