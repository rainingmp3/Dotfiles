-- import mason
local mason = require "mason"
local mason_tool_installer = require "mason-tool-installer"
local mason_lspconfig = require "mason-lspconfig"

--
mason.setup {
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
}

--
mason_tool_installer.setup {
  ensure_installed = {
    "clang-format", -- c++ formatter
    "codelldb", -- c++ debugger
    "black", -- python formatter
    "mypy", -- python linter
    "debugpy", -- python debugger
  },
}

--
mason_lspconfig.setup {
  ensure_installed = {
    "clangd", -- c++ lsp server
    "pyright", -- python lsp server
    "ruff", -- python linter
  },
}
