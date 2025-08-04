return {
	{
		"rcarriga/nvim-dap-ui",
		event = "VeryLazy",
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			require("configs.dapui")
		end,
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		event = "VeryLazy",
		dependencies = {
			"williamboman/mason.nvim",
			"mfussenegger/nvim-dap",
		},
		opts = {
			handlers = {},
		},
	},
	{
		"mfussenegger/nvim-dap-python",
		ft = "python",
		dependencies = {
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
		},
		config = function(_, opts)
			local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
			require("dap-python").setup(path)
		end,
		-- LazyLoad Key Mappings for DAP Python
		keys = {
			{
				"<leader>\\m",
				":lua require('dap-python').test_method()<CR>",
				mode = "n",
				desc = "Test Python methods.",
			},
			{ "<leader>\\c", ":lua require('dap-python').test_class()<CR>", mode = "n", desc = "Test Python classes." },
			{
				"<leader>\\s",
				":lua require('dap-python').debug_selection()<CR>",
				mode = "v",
				desc = "Debug Python selection.",
			},
		},
	},
	{
		"mfussenegger/nvim-dap",
		-- LazyLoad Key Mappings for DAP
		keys = {
			{ "<leader>\\b", ":lua require('dap').toggle_breakpoint()<CR>", mode = "n", desc = "Toggle breakpoint." },
			{ "<F5>", ":lua require('dap').continue()<CR>", mode = "n", desc = "Start or continue debugging." },
			{ "<F10>", ":lua require('dap').step_over()<CR>", mode = "n", desc = "Step over." },
			{ "<F11>", ":lua require('dap').step_into()<CR>", mode = "n", desc = "Step into." },
			{ "<F12>", ":lua require('dap').step_out()<CR>", mode = "n", desc = "Step out." },
			{ "<leader><F5>", ":lua require('dap').stop()<CR>", mode = "n", desc = "Stop debugging." },
			{ "<leader>\\<F5>", ":lua require('dap').restart()<CR>", mode = "n", desc = "Restart debugging." },
		},
	},
	{
		"nvimtools/none-ls.nvim",
		event = "VeryLazy",
		opts = function()
			require("configs.null-ls")
		end,
	},
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			require("configs.mason")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("configs.treesitter")
		end,
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},
}
