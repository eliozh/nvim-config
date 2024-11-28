return {
    {
        "danymat/neogen",
        config = function()
            require("neogen").setup({
                snippet_engine = "vsnip",
            })
        end
    },
}
