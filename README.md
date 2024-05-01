# nvim-switcharoo

Fast way to switch to a predefined directory

NVIM plugin: Navigate between specific folders super fast.

When user changes directory via telescope, a callback is provided to allow for a post search action to be preformed.

- User opens telescope.
- Select directory from the list.
- Users cwd is changed to the new folder.
- Open netrw.
- Post action. For me, I want to open telescopes find files search.

  -------------- WORK NOTES --------------

Project structure:

project-name.nvim/
├── lua/project-name/init.lua
└── plugin/example.lua

Where to put stuff:

- Plugin: Will execute lua files when nvim starts.
- Lua: Store code for the plugin (attributes and methods).


