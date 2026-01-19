-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
    -- add gruvbox
    { "ellisonleao/gruvbox.nvim" },

    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "gruvbox",
        },
    },
    -- Enable auto rebuild from treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
    },
    -- add Snacks config
    {
        "snacks.nvim",
        opts = {
            dashboard = {
                preset = {
                    pick = function(cmd, opts)
                        return LazyVim.pick(cmd, opts)()
                    end,
                    header = [[
████████╗██████╗█████═╗ ██████╗ █████╗  █████╗ ████████╗           
████████║█╔════╝█╔══██║ █╔═══█║██╔══██╗██╔══██╗████████║   /|、♡   
╚══██╔══╝████╗  █████╔╝ █║   █║█╔╝  ╚═╝███████║╚══██╔══╝  (` - 7   
   ██║   █╔══╝  █╔══██╗ █║   █║██╗  ██╗██╔══██║   ██║     |, , \  
   ██║   ██████╗█║  ╚██╗██████║ █████╔╝██║  ██║   ██║     じしˍ,)ノ
   ╚═╝   ╚═════╝╚╝   ╚═╝╚═════╝ ╚════╝ ╚═╝  ╚═╝   ╚═╝              ]],
                -- stylua: ignore
                ---@type snacks.dashboard.Item[]
                keys = {
                { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
                { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
                { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
                { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
                { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                },
                },
            },
        },
    },
}
