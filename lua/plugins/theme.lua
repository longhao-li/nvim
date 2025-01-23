return {
    { "ellisonleao/gruvbox.nvim" },
    { "LazyVim/LazyVim", opts = { colorscheme = "gruvbox" } },
    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = {
            filesystem = {
                filtered_items = {
                    visible = true,
                },
            },
        },
    },
}
