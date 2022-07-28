require("nvim-lsp-installer").on_server_ready(
    function(server)
        local opts = {}
        if server.name == "sumneko_lua" then
            opts = {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim", "use" } } } } }
        end
        server:setup(opts)
    end)

vim.cmd("set omnifunc=v:lua.vim.lsp.omnifunc")
