return{
  'stevearc/conform.nvim',

config = function()
    local conform = require("conform")
    local defaults = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofmt","goimports"},
    c = {"clang-format"}
}
  },

vim.keymap.set({"n","v"},"<leader>f", function()
            conform.format({
                async = true,
            })
        end, { desc = "Format current file with conform" })
    end
}
