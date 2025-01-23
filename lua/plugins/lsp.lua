return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "vim",
                "c",
                "cpp",
            },
        },
    },
    {
        "williamboman/mason.nvim",
        opts = { ensure_installed = { "clang-format" }, PATH = "append" },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local util = require("lspconfig.util")
            local clangds = {
                "clangd",
                "clangd-20",
                "clangd20",
                "clangd-19",
                "clangd19",
                "clangd-18",
                "clangd18",
                "clangd-17",
                "clangd17",
                "clangd-16",
                "clangd16",
                "clangd-15",
                "clangd15",
                "clangd-14",
                "clangd14",
            }

            local use_mason = true

            local clangd_exe = "clangd"
            for _, name in pairs(clangds) do
                if vim.fn.executable(name) then
                    clangd_exe = name
                    use_mason = false
                    break
                end
            end

            lspconfig.clangd.setup({
                cmd = {
                    clangd_exe,
                    "--all-scopes-completion",
                    "--background-index",
                    "--clang-tidy",
                    "--completion-style=detailed",
                    "--header-insertion=never",
                },
                single_file_support = true,
                filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
            })
        end,
    },
}
