require("autoclose").setup {
    keys = {
        ["<"] = { escape = false, close = true, pair = "<>" },
        [">"] = { escape = true, close = false, pair = "<>" },
    },
}
