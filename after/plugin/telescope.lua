local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader> ", builtin.find_files)  -- files
vim.keymap.set("n", "<leader>fg", builtin.git_files)  -- git
vim.keymap.set("n", "<leader>fb", builtin.buffers)    -- buffers
vim.keymap.set("n", "<leader>fh", builtin.help_tags)  -- help
