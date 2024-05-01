-- local has_telescope, telescope = pcall(require, "telescope")
--
-- if not has_telescope then
--   error("This plugin requires nvim-telescope/telescope.nvim")
-- end

local has_switcharoo, switcharoo = pcall(require, "nvim-switcharoo.init")

if not has_switcharoo then
  error("Failed to load nvim-switcharoo")
end

-- Debug statement to verify that nvim-switcharoo was loaded successfully
print("nvim-switcharoo loaded successfully")

-- Now you can use switcharoo.cd() or any other functions provided by nvim-switcharoo
switcharoo.cd()

-- return telescope.register_extension({
--   exports = {
--     switcharoo = switcharoo.cd,
--   },
-- })
