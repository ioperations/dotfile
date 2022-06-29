--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "gruvbox"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-q>"] = ":q!<cr>"
lvim.keys.normal_mode["Q"] = ":q<cr>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
lvim.keys.normal_mode["S"] = ":HopWord<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
   -- for input mode
   i = {
     ["<C-j>"] = actions.move_selection_next,
     ["<C-k>"] = actions.move_selection_previous,
     ["<C-n>"] = actions.cycle_history_next,
     ["<C-p>"] = actions.cycle_history_prev,
   },
   -- for normal mode
   n = {
     ["<C-j>"] = actions.move_selection_next,
     ["<C-k>"] = actions.move_selection_previous,
   },
}

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "startify"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "cpp",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings

-- ---@usage disable automatic installation of servers
-- lvim.lsp.automatic_servers_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "clangd" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skiipped for the current filetype
-- vim.tbl_map(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', '<space>lD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', '<space>ld', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<space>li', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>lt', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>lR', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>la', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', '<space>lr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>lf', vim.lsp.buf.formatting, bufopts)
end

-- Additional Plugins
lvim.plugins = {
    { "folke/tokyonight.nvim" },
    { "junnplus/nvim-lsp-setup" },
    { "p00f/clangd_extensions.nvim" },
    { "morhetz/gruvbox" },
    { "phaazon/hop.nvim" },
    --     { "mhinz/vim-startify" },
    { "lukas-reineke/indent-blankline.nvim" },
    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
    },
}

require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran', jump_on_sole_occurrence = false };



-- require('lspconfig')['ccls'].setup { on_attach = on_attach, }

require("clangd_extensions").setup {
     server = {
         -- options to pass to nvim-lspconfig
         on_attach = on_attach,
     },
     extensions = {
         -- defaults:
         -- Automatically set inlay hints (type hints)
         autoSetHints = true,
         -- These apply to the default ClangdSetInlayHints command
         inlay_hints = {
             -- Only show inlay hints for the current line
             only_current_line = false,
             -- Event which triggers a refersh of the inlay hints.
             -- You can make this "CursorMoved" or "CursorMoved,CursorMovedI" but
             -- not that this may cause  higher CPU usage.
             -- This option is only respected when only_current_line and
             -- autoSetHints both are true.
             only_current_line_autocmd = "CursorHold",
             -- whether to show parameter hints with the inlay hints or not
             show_parameter_hints = true,
             -- prefix for parameter hints
             parameter_hints_prefix = "<- ",
             -- prefix for all the other hints (type, chaining)
             other_hints_prefix = "=> ",
             -- whether to align to the length of the longest line in the file
             max_len_align = false,
             -- padding from the left if max_len_align is true
             max_len_align_padding = 1,
             -- whether to align to the extreme right or not
             right_align = false,
             -- padding from the right if right_align is true
             right_align_padding = 7,
             -- The color of the hints
             highlight = "Comment",
             -- The highlight group priority for extmark
             priority = 100,
         },
         ast = {
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

             highlights = {
                 detail = "Comment",
             },
             memory_usage = {
             border = "none",
             },
             symbol_info = {
             border = "none",
             },
         },
     }
}

vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")

local set = vim.opt -- set options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_end_of_line = true,
    show_current_context = true,
    show_current_context_start = true,
}
-- require('clangd_extensions').setup({})

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
