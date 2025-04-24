return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform",
    },

    {
        "williamboman/mason-lspconfig.nvim",
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
        dependencies = { 'p00f/clangd_extensions.nvim' },
    },

    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
        'hrsh7th/nvim-cmp',
        opts = {
            preselect = require('cmp').PreselectMode.None,
            completion = {
                completeopt = 'menu,menuone,noselect,noinsert',
            },
            enabled = function()
                return vim.g.cmp_toggle_flag
            end,
            mapping = {
                ['<CR>'] = function(fallback)
                    local cmp = require('cmp')
                    if cmp.visible() then
                        if cmp.get_selected_entry() then
                            cmp.confirm()
                        else
                            cmp.close()
                        end
                    else
                        fallback()
                    end
                end,
            },
        }
    },

    {
        'p00f/clangd_extensions.nvim',
        lazy = true,
        config = function() end,
        opts = {
            inlay_hints = {
                inline = true,
            },
            ast = {
                --These require codicons (https://github.com/microsoft/vscode-codicons)
                role_icons = {
                    type = "",
                    declaration = "",
                    expression = "",
                    specifier = "",
                    statement = "",
                    ["template argument"] = "",
                },
                kind_icons = {
                    Compound = "",
                    Recovery = "",
                    TranslationUnit = "",
                    PackExpansion = "",
                    TemplateTypeParm = "",
                    TemplateTemplateParm = "",
                    TemplateParamObject = "",
                },
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = { "c", "cpp", "rust", "lua", "vim", "vimdoc", "javascript", "html" },
            sync_install = false,
            highlight = { enable = true },
        },
    },

    {
       'rmagatti/auto-session',
       lazy = false,

       ---enables autocomplete for opts
       ---@module "auto-session"
       ---@type AutoSession.Config
       opts = {
          suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
          -- log_level = 'debug',
       }
    },

    {
        "christoomey/vim-tmux-navigator",
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
            "TmuxNavigatorProcessList",
        },
        keys = {
            { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        },
    },


    -- test new blink
    -- { import = "nvchad.blink.lazyspec" },

    -- {
    -- 	"nvim-treesitter/nvim-treesitter",
    -- 	opts = {
    -- 		ensure_installed = {
    -- 			"vim", "lua", "vimdoc",
    --      "html", "css"
    -- 		},
    -- 	},
    -- },
}
