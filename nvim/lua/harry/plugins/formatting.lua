return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")


        conform.setup({
            formatters_by_ft = {
                go = { "goimports", "gofmt" },
                javascript = { "prettier" },
                typescript = { "prettier" },
                html = { "prettier" },
                javascriptreact = { "prettier" },
                java = { "prettier" },
                lua = { "stylua" },
                python = { "isort", "black" },
                c = { "clang-format" },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 500
            }
        })

        vim.keymap.set({ "n", "v" }, "<leader>mp", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 500
            })
        end, { desc = "Format file or range (in visual mode)" })
    end,
}
