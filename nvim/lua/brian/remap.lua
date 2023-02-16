vim.keymap.set("n", "<leader>pv", "<cmd>:Ex<CR>")
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<find_filescr>")
vim.keymap.set("n", "<leader>e", "<:NvimTreeToggle<cr>", opts)

-- lets you move blocks of text with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--[[ vim.keymap.set("n", "<leader>p", "\"_dP") ]]
vim.keymap.set("n", "<leader>p", ":put *<cr>")

-- allows you to leader y to copy to system clipboard. regular y still copies only to vim.
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- apparently Q is a bad place to go.
vim.keymap.set("n", "Q", "<nop>")

-- split remaps
vim.keymap.set("n", "<C-x>", ":vsplit<CR>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

-- find and replace on current word only in current file. F2 does all files.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>d", "\"_d")

-- basic bitch save
vim.keymap.set("n", "<C-s>", ":w<CR>")

-- basic bitch new split.
vim.keymap.set("n", "<C-n>", ":vsplit<CR>")
