require("cmake-tools").setup({
    run_dir = "cwd" -- ensures it runs from project root instead of build dir
})
require('Comment').setup()

require("ibl").setup()

