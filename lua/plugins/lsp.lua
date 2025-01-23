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
        opts = { ensure_installed = { "clangd", "clang-format" } },
    },
}
