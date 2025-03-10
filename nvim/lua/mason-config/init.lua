-- [[ Configure mason ]]

-- mason.setup must always preceed mason-lspconfig.setup
-- This initializes Mason in Neovim.
require('mason').setup()

-- Make sure lsp-config module exist in lua folder
local lspconfig = require('lsp-config')

-- list of nvim-lspconfig servers to install
-- :lua P(require('mason-lspconfig').get_installed_servers())
-- must install java-debug-adapter and java-test via mason if jdtls is installed is not working properly
local servers = { 'gopls', 'lemminx', 'jsonls', 'lua_ls', 'jdtls', 'terraformls' }


-- see :help mason-lspconfig-introduction
-- this is approach is preferrable because this will automatically setup server installed 
-- by mason as opposed to installing server first via mason and then setting up them 
-- via nvim-lspconfig
require('mason-lspconfig').setup {
	ensure_installed = servers,

	handlers = {
		-- see :help mason-lspconfig-setup
		lspconfig.default_lsp_handler,

		-- using nvim-jdtls and hence we don't want to setup jdtls using nvim-lspconfig
		-- Hence we are excluding jdtls here
		-- nvim jdtls is more better then standard jdtls 
		['jdtls'] = lspconfig.noop_handler,

		-- customize lua_ls via nvim-lspconfig
		['lua_ls'] = lspconfig.lua_lsp_handler,
	},
}