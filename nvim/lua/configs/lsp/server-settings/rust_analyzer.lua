return {
  on_attach = astronvim.lsp.disable_formatting,
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        loadOutDirsFromCheck = true,
      },
      checkOnSave = {
        command = "clippy",
      },
      experimental = {
        procAttrMacros = true,
      },
    },
  },
}
