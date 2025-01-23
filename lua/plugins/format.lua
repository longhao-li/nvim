return {
    {
        "stevearc/conform.nvim",
        optional = true,
        opts = {
            formatters_by_ft = {
                ["c"] = { "clang-format" },
                ["cc"] = { "clang-format" },
                ["cpp"] = { "clang-format" },
                ["cxx"] = { "clang-format" },
                ["h"] = { "clang-format" },
                ["hh"] = { "clang-format" },
                ["hpp"] = { "clang-format" },
                ["hxx"] = { "clang-format" },
                ["c++"] = { "clang-format" },
                ["ixx"] = { "clang-format" },
                ["mpp"] = { "clang-format" },
                ["ccm"] = { "clang-format" },
                ["cppm"] = { "clang-format" },
                ["cxxm"] = { "clang-format" },
            },
        },
    },
}
