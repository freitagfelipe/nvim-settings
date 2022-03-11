local g = vim.g

g.nvim_tree_icons = {
    default = "",
    symlink = "",
    git = {
        unstaged = "",
        staged = "S",
        unmerged = "",
        renamed = "➜",
        deleted = "",
        untracked = "U",
        ignored = ""
    },
    folder = {
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = ""
    }
}
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_indent_markers = 1
g.nvim_tree_git_hl = 1

local present, nvim_tree = pcall(require, "nvim-tree")

if not present then
    print("You need nvim-tree!")

    return
end

nvim_tree.setup {
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup = true,
    ignore_buffer_on_setup = true,
    ignore_ft_on_setup = {},
    auto_close = true,
    auto_reload_on_write = true,
    open_on_tab = false,
    sort_by = "name",
    hijack_cursor = true,
    update_cwd = true,
    hijack_unnamed_buffer_when_opening = false,
    hijack_directories = {
        enable = true,
        auto_open = true,
    },
    diagnostics = {
        enable = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        }
    },
    update_focused_file = {
        enable = true,
        update_cwd = false,
        ignore_list = {}
    },
    system_open = {
        cmd = nil,
        args = {}
    },
    filters = {
        dotfiles = false,
        custom = {".git"}
    },
    git = {
        enable = true,
        ignore = false,
        timeout = 500,
    },
    view = {
        width = 30,
        height = 30,
        hide_root_folder = false,
        side = "left",
        preserve_window_proportions = true,
        mappings = {
            custom_only = false,
            list = {}
        },
        number = false,
        relativenumber = false,
        signcolumn = "yes"
    },
    trash = {
        cmd = "trash",
        require_confirm = true
    },
    actions = {
        change_dir = {
            enable = true,
            global = false,
        },
        open_file = {
            quit_on_open = false,
            resize_window = true,
            window_picker = {
                enable = true,
                chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
                exclude = {
                    filetype = {},
                    buftype = {"help"}
                }
            }
        }
    }
}
