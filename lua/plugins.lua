--VIM-PLUG
local Plug = vim.fn['plug#']
vim.call('plug#begin')
--Appearance
-- Plug 'vim-airline/vim-airline' -- infrerior to nvim-lualine/lualine.vim
-- Plug 'ryanoasis/vim-devicons' -- inferior to nvim-web-devicons
--Plug('folke/tokyonight.nvim')
--Utilities
vim.call('plug#end')

--PACKER
local packer = require("packer")
vim.cmd [[packadd packer.nvim]] -- Include packer.nvim
packer.startup(function()
    --Appearance
    use("kyazdani42/nvim-web-devicons") -- lua fork of vim-devicons
    use {'nvim-lualine/lualine.nvim',requires = { 'kyazdani42/nvim-web-devicons', opt = true },config = function()require 'configs.lualine'end } --lua improvement of vim-airline.    
    use {'lewis6991/gitsigns.nvim',config = function() require 'configs.gitsigns' end}
    --Colorschmes
    use("folke/tokyonight.nvim")
    --Utilities
    use {"windwp/nvim-autopairs",config = function() require("nvim-autopairs").setup() end} --pair completion
    use {"norcalli/nvim-colorizer.lua", config= function() require("colorizer").setup() end} --displays HEX< RGB, HSL colors in editor
    use {
        'phaazon/hop.nvim',--Hop is a complete from-scratch rewrite of EasyMotion
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }
    --Code Completion, Linters, Formatter, Language Servers
    use "nvim-lua/plenary.nvim"
    use({"jose-elias-alvarez/null-ls.nvim",config = function()require("null-ls").setup()end,requires = { "nvim-lua/plenary.nvim" },})
    use({"nvim-treesitter/nvim-treesitter",config=function()require 'configs.nvim-treesitter'end}) --simple and easy way to use the interface for tree-sitter in Neovim and to provide some basic functionality such as highlighting based on it
    use({"neovim/nvim-lspconfig",config=function() require 'configs.nvim-lspconfig' end})
    use({"L3MON4D3/LuaSnip",requires={"hrsh7th/nvim-cmp"},after = "nvim-cmp"})
    use({"hrsh7th/nvim-cmp",config=function() require 'configs.nvim-cmp'end})
    use({"hrsh7th/cmp-buffer"})         --
    use({"hrsh7th/cmp-path"})           --help complete file
    use({'hrsh7th/cmp-nvim-lua'})       --lua completions.
    use({'hrsh7th/cmp-nvim-lsp'})       --
    use({'saadparwaiz1/cmp_luasnip'})   --

end)

-- Color Scheme and syntax
vim.cmd [[
syntax enable
colorscheme tokyonight
]]



-- place this in one of your configuration file(s)
-- vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
-- vim.api.nvim_set_keymap('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
-- vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
-- vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})
