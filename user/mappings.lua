local mappings = {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    ["<C-p>"] = {
      function() require("telescope.builtin").find_files() end,
      desc = "Search files",
    },
    ["<C-f>"] = function() vim.lsp.buf.format() end,
    ["<C-q>"] = function() require("astronvim.utils.buffer").close() end,
    ["<S-h>"] = function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    ["<S-l>"] = function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    ["<leader>G"] = { name = " GitHub" },
    ["<leader>Gi"] = { "<cmd>Octo issue list<cr>", desc = "Open Issues" },
    ["<leader>GI"] = { "<cmd>Octo issue search<cr>", desc = "Search Issues" },
    ["<leader>Gp"] = { "<cmd>Octo pr list<cr>", desc = "Open PRs" },
    ["<leader>GP"] = { "<cmd>Octo pr search<cr>", desc = "Search PRs" },
    ["<leader>Gr"] = { "<cmd>Octo repo list<cr>", desc = "Open Repository" },
    -- ["<F5>"] = { "<cmd>!cargo run<cr>", desc = "cargo run" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}

return mappings
