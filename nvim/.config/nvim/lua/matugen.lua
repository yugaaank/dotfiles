 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#000000',
    base01 = '#000206',
    base02 = '#000000',
    base03 = '#bec7d4',
    base04 = '#e7eaee',
    base05 = '#ffffff',
    base06 = '#ffffff',
    base07 = '#ffffff',
    base08 = '#ffabb0',
    base09 = '#d5aff1',
    base0A = '#b3aff1',
    base0B = '#c1d9fa',
    base0C = '#f7e6ff',
    base0D = '#edf3ff',
    base0E = '#e8e4ff',
    base0F = '#310008',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#ffffff',          bg = '#000000' })
  hi('TelescopeBorder',         { fg = '#bec7d4',             bg = '#000000' })
  hi('TelescopePromptNormal',   { fg = '#ffffff',          bg = '#000000' })
  hi('TelescopePromptBorder',   { fg = '#bec7d4',             bg = '#000000' })
  hi('TelescopePromptPrefix',   { fg = '#c1d9fa',             bg = '#000000' })
  hi('TelescopePromptCounter',  { fg = '#e7eaee',  bg = '#000000' })
  hi('TelescopePromptTitle',    { fg = '#000000',             bg = '#c1d9fa' })
  hi('TelescopePreviewTitle',   { fg = '#000000',             bg = '#b3aff1' })
  hi('TelescopeResultsTitle',   { fg = '#000000',             bg = '#d5aff1' })
  hi('TelescopeSelection',      { fg = '#ffffff',          bg = '#000000' })
  hi('TelescopeSelectionCaret', { fg = '#c1d9fa',             bg = '#000000' })
  hi('TelescopeMatching',       { fg = '#c1d9fa',             bold = true })
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
