vim.opt.termguicolors = true
require("bufferline").setup{}

vim.keymap.set("n", "<S-l>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<C-w>", ":bdelete!<CR>", opts)

local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
return
end

require('bufferline').setup {
options = {
    numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
    diagnostics = "nvim_lsp",
    --[[ separator_style = "padded_slant", ]]
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
    }
}
