require("nvchad.options")

local opt = vim.opt
local o = vim.o
local g = vim.g

o.relativenumber = true

o.undodir = vim.fn.stdpath("data") .. "/undodir"

o.swapfile = false
