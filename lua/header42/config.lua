local config = {
	values = {},
}

local _defaults = {
	user = "marvin",
	mail = "marvin@42.fr",
	ft = {
		c = {
			start_comment = "/*",
			end_comment = "*/",
			fill_comment = "*",
		},
		cpp = {
			start_comment = "/*",
			end_comment = "*/",
			fill_comment = "*",
		},
		make = {
			start_comment = "#",
			end_comment = "#",
			fill_comment = "#",
		},
		python = {
			start_comment = "#",
			end_comment = "#",
			fill_comment = "#",
		},
		lua = {
			start_comment = "--",
			end_comment = "--",
			fill_comment = "-",
		},
		vim = {
			start_comment = '"',
			end_comment = '"',
			fill_comment = "*",
		},
	},
}

--- Sets user configartion
-- @param opts user configuration
config.set = function(opts)
	config.values = vim.tbl_deep_extend("force", _defaults, opts)
end

return config