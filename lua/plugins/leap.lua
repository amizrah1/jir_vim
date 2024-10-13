return {
	"ggandor/leap.nvim",
	config = function()
		require("leap").add_default_mappings()
		require("leap").init_highlight(true)
	end,
	dependencies = {
		"tpope/vim-repeat",
	},
	lazy = false,
}
