return {
	"NvChad/base46",
	branch = "v2.5",
	lazy = true,
	build = function()
		require("base46").load_all_highlights()
	end,
}
