-- -- local status_ok, nvim_tree = pcall(require, "nvim-tree")
-- -- if not status_ok then
-- --   return
-- -- end
-- --
-- -- local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
-- -- if not config_status_ok then
-- --   return
-- -- end
--
-- local tree_cb = nvim_tree_config.nvim_tree_callback
--
-- nvim_tree.setup {
--     renderer = {
-- --      add_trailing = false,
-- --      group_empty = false,
-- --      highlight_git = false,
-- --      highlight_opened_files = "none",
--         root_folder_modifier = ":t",
--         indent_markers = {
--             enable = false,
--             icons = {
--                 corner = " └ ",
--                 edge = " │ ",
--                 none = "  ",
--             },
--         },
--         icons = {
--             webdev_colors = true,
--             git_placement = "before",
--             padding = " ",
--             symlink_arrow = " ➛ ",
--             show = {
--                 file = true,
--                 folder = true,
--                 folder_arrow = true,
--                 git = false,
--             },
--             glyphs = {
--                 default = "",
--                 symlink = "",
--                 folder = {
--                     arrow_open = "",
--                     arrow_closed = "",
--                     default = "",
--                     open = "",
--                     empty = "",
--                     empty_open = "",
--                     symlink = "",
--                     symlink_open = "",
--                 },
--                 git = {
--                     unstaged = "",
--                     staged = "S",
--                     unmerged = "",
--                     renamed = "➜",
--                     deleted = "",
--                     untracked = "U",
--                     ignored = "◌",
--                 },
--             },
--         },
--         special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
--     },
--   hijack_directories = {
--     enable = false,
--   },
--   -- update_to_buf_dir = {
--   --   enable = false,
--   -- },
--      disable_netrw = true,
--      hijack_netrw = true,
--   -- open_on_setup = false,
--   ignore_ft_on_setup = {
--     "startify",
--     "dashboard",
--     "alpha",
--   },
--      open_on_tab = false,
--      hijack_cursor = false,
--   update_cwd = true,
--   -- update_to_buf_dir = {
--   --   enable = true,
--   --   auto_open = true,
--   -- },
--   -- --   error
--   -- --   info
--   -- --   question
--   -- --   warning
--   -- --   lightbulb
--   diagnostics = {
--     enable = true,
--     icons = {
--       hint = "",
--       info = "",
--       warning = "",
--       error = "",
--     },
--   },
--   update_focused_file = {
--     enable = true,
--     update_cwd = true,
--     ignore_list = {},
--   },
--   -- system_open = {
--   --   cmd = nil,
--   --   args = {},
--   -- },
--   -- filters = {
--   --   dotfiles = false,
--   --   custom = {},
--   -- },
--   git = {
--     enable = true,
--     ignore = false,
--     timeout = 500,
--   },
--   view = {
--     width = 30,
--     hide_root_folder = false,
--     side = "left",
--     auto_resize = true,
--     mappings = {
--       custom_only = false,
--       list = {
--         { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
--         { key = "h", cb = tree_cb "close_node" },
--         { key = "v", cb = tree_cb "vsplit" },
--       },
--     },
--     number = false,
--     relativenumber = false,
--   },
--   -- trash = {
--   --   cmd = "trash",
--   --   require_confirm = true,
--   -- },
--   -- quit_on_open = 0,
--   -- git_hl = 1,
--   -- disable_window_picker = 0,
--   -- root_folder_modifier = ":t",
-- }
--
-- -- shortcuts: https://github.com/kyazdani42/nvim-tree.lua#key-bindings
--
--
--
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    number = false,
    relativenumber = false,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
})


local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
  vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
end

-- pass to setup along with your other options
require("nvim-tree").setup {
  ---
  on_attach = my_on_attach,
  ---
}
