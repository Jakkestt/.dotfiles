return {
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
        loadOutDirsFromCheck = true,
      },
      checkOnSave = {
        allFeatures = true,
        command = "clippy",
      },
      experimental = {
        procAttrMacros = true,
      },
    },
  },
}
