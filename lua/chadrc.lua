-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "carbonfox",
	 hl_override = {
	 	Comment = { italic = true },
	 	["@comment"] = { italic = true },
    Normal = { bg = "#000000" },
    NormalFloat = { bg = "#000000" },
    NormalNC = { bg = "#000000" },
	 },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
--}

-- CTRL+Backspace Deletion
vim.api.nvim_set_keymap('i', '<C-BS>', '<C-W>', {noremap = true})

-- CTRL+DEL Deletion
vim.api.nvim_set_keymap('i', '<C-Del>', '<Esc>lbce', {noremap = true})

--vim.keymap.set('n', '<leader>c', require('osc52').copy_operator, {expr = true})
--vim.keymap.set('n', '<leader>cc', '<leader>c_', {remap = true})
--vim.keymap.set('v', '<leader>c', require('osc52').copy_visual)

return M
