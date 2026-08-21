 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#0f1416',
    base01 = '#1b2023',
    base02 = '#252b2d',
    base03 = '#899296',
    base04 = '#bfc8cc',
    base05 = '#dee3e6',
    base06 = '#dee3e6',
    base07 = '#dee3e6',
    base08 = '#ffb4ab',
    base09 = '#c1c4eb',
    base0A = '#b3cad3',
    base0B = '#86d1e9',
    base0C = '#c1c4eb',
    base0D = '#86d1e9',
    base0E = '#b3cad3',
    base0F = '#93000a',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#dee3e6',          bg = '#0f1416' })
  hi('TelescopeBorder',         { fg = '#899296',             bg = '#0f1416' })
  hi('TelescopePromptNormal',   { fg = '#dee3e6',          bg = '#0f1416' })
  hi('TelescopePromptBorder',   { fg = '#899296',             bg = '#0f1416' })
  hi('TelescopePromptPrefix',   { fg = '#86d1e9',             bg = '#0f1416' })
  hi('TelescopePromptCounter',  { fg = '#bfc8cc',  bg = '#0f1416' })
  hi('TelescopePromptTitle',    { fg = '#0f1416',             bg = '#86d1e9' })
  hi('TelescopePreviewTitle',   { fg = '#0f1416',             bg = '#b3cad3' })
  hi('TelescopeResultsTitle',   { fg = '#0f1416',             bg = '#c1c4eb' })
  hi('TelescopeSelection',      { fg = '#dee3e6',          bg = '#252b2d' })
  hi('TelescopeSelectionCaret', { fg = '#86d1e9',             bg = '#252b2d' })
  hi('TelescopeMatching',       { fg = '#86d1e9',             bold = true })
end

 -- Register a signal handler for SIGUSR1 (matugen updates)
 local signal = vim.uv.new_signal()
 signal:start(
   'sigusr1',
   vim.schedule_wrap(function()
     package.loaded['matugen'] = nil
     require('matugen').setup()
   end)
 )

 return M
