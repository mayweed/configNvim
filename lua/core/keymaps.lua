local keymap = vim.keymap.set


-- Conform keymaps
-- Nice bindings : https://tduyng.com/blog/neovim-formatter-conform/
keymap({ "n", "v" }, "<leader>cn", "<cmd>ConformInfo<cr>", { desc = "Conform Info" })

keymap({ "n", "v" }, "<leader>f", function()
	require("conform").format({ async = true }, function(err, did_edit)
		if not err and did_edit then
			vim.notify("Code formatted", vim.log.levels.INFO, { title = "Conform" })
		end
	end)
end, { desc = "Format buffer" })
