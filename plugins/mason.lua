-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
       "lua_ls",
      "actionlint",
      "ansible-language-server",
      "ansible-lint",
      "antlers-language-server",
      "black",
      "bash-language-server",
      "blade-formatter",
      "docker-compose-language-service",
      "dockerfile-language-server",
      "dot-language-server",
      "eslint_d",
      "flake8",
      "hadolint",
      -- "html-lsp",
      -- "intelephense",
      -- "nginx-language-server",
      -- "php-debug-adapter",
      -- "phpstan",
      "pint",
      "prettierd",
      "pyright",
      "rustywind",
      "shellcheck",
      "shfmt",
      "stylua",
      "tailwindcss-language-server",
        -- "lua_ls",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        -- "prettier",
        -- "stylua",
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "python",
        "php",
        "bash"
        -- "python",
      })
    end,
  },
}
