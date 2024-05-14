return {
  require('lspconfig').gleam.setup {
    cmd = { 'gleam', 'lsp' },
    filetypes = { 'gleam' },
    root_dir = require('lspconfig').util.root_pattern('gleam.toml', '.git'),
  },
}
