require'nvim-tree'.setup{
    renderer = {
        icons = {
            git_placement = "before",
            padding = " ",
            symlink_arrow = " ➛ ",
            show = {
                file = false,
                folder = false,
                folder_arrow = false,
                git = false,
            },
        },
    },
}

