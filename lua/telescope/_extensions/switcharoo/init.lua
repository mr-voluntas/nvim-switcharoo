local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")
local conf = require("telescope.config").values

local M = {}

M.cd = function(opts)
  opts = opts or {
    dirs = {
      { "Users", "/Users/" },
    },
  }

  pickers
      .new(opts, {
        prompt_title = "Folders",
        finder = finders.new_table({
          results = opts.dirs,
          entry_maker = function(entry)
            return {
              value = entry[2],
              display = entry[1],
              ordinal = entry[1],
            }
          end,
        }),
        sorter = conf.generic_sorter(opts),
        attach_mappings = function(prompt_bufnr, map)
          actions.select_default:replace(function()
            actions.close(prompt_bufnr)
            local selection = action_state.get_selected_entry()
            vim.cmd("Ex " .. selection.value)
          end)
          return true
        end,
      })
      :find()
end

return M

