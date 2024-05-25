return {
  'nvim-neorg/neorg',
  enabled = false, -- Disable Neorg by default
  dependencies = { 'luarocks.nvim' },
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  version = '*', -- Pin Neorg to the latest stable release
  config = function()
    require('neorg').setup {
      -- Tell Neorg what modules to load
      load = {
        ['core.defaults'] = {}, -- Load all the default modules
        ['core.concealer'] = {}, -- Allows for use of icons
        ['core.completion'] = {
          config = {
            engine = 'nvim-cmp', -- We currently only support nvim-cmp
          },
        },
        ['core.dirman'] = { -- Manage your directories with Neorg
          config = {
            workspaces = {
              my_workspace = '~/neorg',
            },
            default_workspace = 'my_workspace',
          },
        },
      },
    }
  end,
}
