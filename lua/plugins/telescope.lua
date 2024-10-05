local opts = {
    
}

local function init()
    local builtin = require("telescope.builtin")

    local function opt(desc)
        return { desc = "Telescope " .. desc, noremap = true, silent = true }
    end

    vim.keymap.set("n", "<leader>ff", builtin.find_files, opt("find files"))
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, opt("live grep"))
end

return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    init = init,
    opts = opts,
}
