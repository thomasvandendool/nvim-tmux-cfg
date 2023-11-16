vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- copy buffer relative path to system clipboard
vim.keymap.set("n", "<leader>BD", ":let @+=expand('%')<CR>")

-- move block of code while highlighted
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- concatenate lines while cursor stays in place
vim.keymap.set("n", "J", "mzJ`z")

-- keeps cursor in place while jumping pages up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keeps cursor in middle while skipping through searched words
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- keeps copied thing in paste buffer after pasting
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank highlighted to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- yank whole current line to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- paste from system clipboard
vim.keymap.set("n", "<leader>P", [["+p]])
-- delete something without losing the current buffer
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")
-- switch to previous tmux session
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- create new tmux pane
-- vim.keymap.set("n", "Q", "<cmd>silent !tmux split-window -h <CR>")
vim.keymap.set("n", "QL", "<cmd>silent !tmux split-window -hb -p 22<CR>")
vim.keymap.set("n", "QD", "<cmd>silent !tmux split-window -v -p 22<CR>")
-- format document
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quickfix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- edit all instances of selected word
vim.keymap.set("n", "<leader>sw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- select all instances of string for substition
vim.keymap.set("n", "<leader>ss", [[:%s~\V]])
-- make current buffer executable 
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/code/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
 

-- go remapping
vim.keymap.set("n", "<leader>gorun", "<cmd>!go run .<CR>");
