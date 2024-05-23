return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    -- Setup orgmode
    require('orgmode').setup {
      org_agenda_files = '~/orgfiles/**/*',
      org_default_notes_file = '~/orgfiles/inbox.org',
    }

    require('org-bullets').setup {
      concealcursor = true, -- If false then when the cursor is on a line underlying characters are visible
      symbols = {
        list = '•',
        headlines = { ' ', '󰺕 ', '✸', '✿' },
        -- headlines = { "◉", "○", "✸", "✿" },
        checkboxes = {
          half = { '', 'OrgTSCheckboxHalfChecked' },
          done = { '✓', 'OrgDone' },
          todo = { '×', 'OrgTODO' },
        },
      },
    }
    -- NOTE: If you are using nvim-treesitter with `ensure_installed = "all"` option
    -- add `org` to ignore_install
    -- require('nvim-treesitter.configs').setup({
    --   ensure_installed = 'all',
    --   ignore_install = { 'org' },
    -- })
  end,
}
