return {
  -- Add LSP plugins
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Add your LSP servers here
        pyright = {}, -- Python
        tsserver = {}, -- TypeScript/JavaScript
        rust_analyzer = {}, -- Rust
        -- Add more servers as needed
      },
    },
  },
}
