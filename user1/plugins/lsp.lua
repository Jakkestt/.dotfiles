return {
  {
    "p00f/clangd_extensions.nvim",
    init = function() table.insert(astronvim.lsp.skip_setup, "clangd") end,
    ft = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
    opts = function() return { server = require("astronvim.utils.lsp").config "clangd" } end,
  },
  {
    "simrat39/rust-tools.nvim",
    init = function() table.insert(astronvim.lsp.skip_setup, "rust_analyzer") end,
    ft = { "rust" },
    opts = function()
      return {
        server = require("astronvim.utils.lsp").config "rust_analyzer",
      }
    end,
  },
}
