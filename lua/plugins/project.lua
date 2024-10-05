local opts = {
}

local function config()
    local project = require("project_nvim")
    project.setup {
        detection_methods = { "lsp", "pattern" },
        patterns = {
            ".git",
            "CMakelists.txt",
            "Cargo.toml"
        },
    }
end

return {
    "ahmedkhalf/project.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
    },
    config = config,
    opts = opts,
}
