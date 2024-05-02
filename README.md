# nvim-switcharoo

A fast way to switch between predefined directories.

The problem I wanted to fix:

- An easy way to switch between directories.
- A predefined list of directories I can quickly flick between.
- Open netrw after navigation, as this is my go-to file-tree.

How to add to telescope...

```lua
-- This needs adding to the telescope.setup extensions table
        ["nvim_switcharoo"] = {
         directories = {
          { "Projects", "/Users/Micheal-Scott/Projects" },
          { "Notes", "/Users/Micheal-Scott/Notes" },
          { "Nvim", "~/.config/nvim/" },
         },
        },


-- This is needed to load the extension
   require("telescope").load_extension("nvim_switcharoo")

   -- This can be added for an easy keymap (fd = find directory)
   local switcharoo = require("telescope").extensions.nvim_switcharoo.nvim_switcharoo
   vim.keymap.set("n", "<leader>fd", switcharoo, {})
```
