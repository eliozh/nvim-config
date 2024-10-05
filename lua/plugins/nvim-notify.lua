local opts = {}

return {
    "rcarriga/nvim-notify",
    opts = opts,
    config = function()
        vim.notify = require("notify")
    end,
}
