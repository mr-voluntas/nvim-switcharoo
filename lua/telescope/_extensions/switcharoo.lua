local has_telescope, telescope = pcall(require, "telescope")

if not has_telescope then
  error("This plugin requires nvim-telescope/telescope.nvim")
end

local switcharoo = require("telescope._extensions.switcharoo.init")

return telescope.register_extension({
  exports = {
    switcharoo = switcharoo.cd,
  },
})
