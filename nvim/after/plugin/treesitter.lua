require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "css", "dockerfile", "go", "html", "java", "javascript", "json", "lua", "make", "vimdoc", "yaml" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    aditional_vim_regex_highlighting = true,
  },
}
