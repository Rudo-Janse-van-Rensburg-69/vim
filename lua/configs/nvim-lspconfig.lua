require"lspconfig".pylsp.setup {
    --capabilities=require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    --on_attach= require'completion'.on_attach,
    cmd = {"pylsp"},
    filetypes = {"python"},
    settings = {
        pyls = {
            configurationSources = {"flake8"},
            plugins = {
                jedi_completion = {enabled = true},
                jedi_hover = {enabled = true},
                jedi_references = {enabled = true},
                jedi_signature_help = {enabled = true},
                jedi_symbols = {enabled = true, all_scopes = true},
                pycodestyle = {enabled = true},
                flake8 = {
                    enabled = true,
                    ignore = {},
                    maxLineLength = 160
                },
                mypy = {enabled = true},
                isort = {enabled = true},
                yapf = {enabled = true},
                pylint = {enabled = true},
                pydocstyle = {enabled = true},
                mccabe = {enabled = true},
                preload = {enabled = true},
                rope_completion = {enabled = true}
            }
        }
    },
    on_attach = on_attach
}
require'lspconfig'.tsserver.setup{}
