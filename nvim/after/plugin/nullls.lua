local null_ls = require("null-ls")

local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
local event = "BufWritePre" -- or "BufWritePost"
local async = event == "BufWritePost"

null_ls.register({
    name = 'React Native Actions',
    method = { null_ls.methods.CODE_ACTION },
    filetypes = { 'typescriptreact' },
    generator = {
        fn = function()
            return { {
                title = 'add to styles as view',
                action = function()
                    local component_name = vim.fn.expand("<cword>")
                    local current_path = vim.fn.getcwd() .. "/" .. vim.fn.expand('%:h') .. "/styles.ts"

                    local styled = "export const " .. component_name .. "= styled.View``"

                    if not vim.fn.filereadable(current_path) then
                        print("ARQUIVO NAO EXISTE")
                    end

                    vim.cmd("!echo " .. styled .. " >> " .. current_path)
                end
            } }
        end
    }
})

null_ls.setup({
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.keymap.set("n", "<leader>s", function()
                vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
            end, { buffer = bufnr, desc = "[lsp] format" })

            -- format on save
            vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
            vim.api.nvim_create_autocmd(event, {
                buffer = bufnr,
                group = group,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr, async = async })
                end,
                desc = "[lsp] format on save",
            })
        end

        if client.supports_method("textDocument/rangeFormatting") then
            vim.keymap.set("x", "<leader>s", function()
                vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
            end, { buffer = bufnr, desc = "[lsp] format" })
        end
    end,
})
