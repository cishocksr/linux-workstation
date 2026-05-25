local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    	{
		"nvim-lualine/lualine.nvim",

		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		config = function()
			require("lualine").setup()
		end,
	},
	{
		"folke/which-key.nvim",

		event = "VeryLazy",

		config = function()
			require("which-key").setup()
		end,
	},
	{
		"lewis6991/gitsigns.nvim",

		config = function()
			require("gitsigns").setup()
		end,
	},

	{
		"stevearc/conform.nvim",

		config = function()
			require("conform").setup({

				formatters_by_ft = {

					lua = {
						"stylua",
					},

					sh = {
						"shfmt",
					},

					bash = {
						"shfmt",
					},

					javascript = {
						"prettier",
					},

					java = {
						"google-java-format",
					},
				},

				format_on_save = {

					timeout_ms = 500,

					lsp_fallback = true,
				},
			})
		end,
	},

	{
		"hrsh7th/nvim-cmp",

		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},

		config = function()
			local cmp = require("cmp")

			cmp.setup({

				mapping = cmp.mapping.preset.insert({

					["<Tab>"] = cmp.mapping.select_next_item(),

					["<S-Tab>"] = cmp.mapping.select_prev_item(),

					["<CR>"] = cmp.mapping.confirm({
						select = true,
					}),
				}),

				sources = {
					{
						name = "nvim_lsp",
					},
				},
			})
		end,
	},

	{
		"williamboman/mason.nvim",

		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",

		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
				},
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",

		config = function()
			vim.lsp.enable({
				"lua_ls",
				"bashls",
			})
		end,
	},

	{
		"hrsh7th/nvim-cmp",
	},

	{
		"hrsh7th/cmp-nvim-lsp",
	},

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.config").setup({
				ensure_installed = {
					"lua",
					"bash",
					"vim",
					"javascript",
					"java",
				},
				highlight = {
					enable = true,
				},
				indent = {
					enable = true,
				},
			})
		end,
	},

	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup()
		end,
	},

	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},

	{
		"Shatur/neovim-ayu",
	},
})


