return {
    'MunifTanjim/prettier.nvim',
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
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

        local prettier = require("prettier")
        prettier.setup({
            bin = 'prettier', -- or `'prettierd'` (v0.22+)
            filetypes = {
                "css",
                "graphql",
                "html",
                "javascript",
                "javascriptreact",
                "json",
                "less",
                "markdown",
                "scss",
                "typescript",
                "typescriptreact",
                "yaml",
            },
            ["null-ls"] = {
                condition = function()
                    return prettier.config_exists({
                        -- if `false`, skips checking `package.json` for `"prettier"` key
                        check_package_json = true,
                    })
                end,
                runtime_condition = function(params)
                    -- return false to skip running prettier
                    return true
                end,
                timeout = 5000
            }
        })
    end
}
