require("gitsigns").setup({
    on_attach = function(bufnr)
        local gitsigns = require("gitsigns")

        local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
        end

        map("n", "<leader>gd", gitsigns.diffthis, { desc = "git [d]iff against index" })
        map("n", "<leader>gD", function()
            gitsigns.diffthis("@")
        end, { desc = "git [D]iff against last commit" })
    end,
})
