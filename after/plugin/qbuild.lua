local qbuild = require("vim-qbuild")

-- open the build dir in netrw-vexplore
vim.keymap.set("n", "<leader>qo", qbuild.open_build_dir)

-- run the default build script
vim.keymap.set("n", "<leader>qb", qbuild.run_build_file)

-- run the first build script
vim.keymap.set("n", "<leader>q0", function() qbuild.run_nth_build_file(0) end)
-- run the second build script
vim.keymap.set("n", "<leader>q1", function() qbuild.run_nth_build_file(1) end)
-- and so on
vim.keymap.set("n", "<leader>q2", function() qbuild.run_nth_build_file(2) end)
