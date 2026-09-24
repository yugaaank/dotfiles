 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#101418',
    base01 = '#1d2024',
    base02 = '#272a2f',
    base03 = '#8c9199',
    base04 = '#c2c7cf',
    base05 = '#e0e2e8',
    base06 = '#e0e2e8',
    base07 = '#e0e2e8',
    base08 = '#ffb4ab',
    base09 = '#d4bee5',
    base0A = '#bac8da',
    base0B = '#9dcbfc',
    base0C = '#d4bee5',
    base0D = '#9dcbfc',
    base0E = '#bac8da',
    base0F = '#d6e4f7',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- telescope.nvim
  hi('TelescopeNormal',         { fg = '#e0e2e8',          bg = '#101418' })
  hi('TelescopeBorder',         { fg = '#8c9199',             bg = '#101418' })
  hi('TelescopePromptNormal',   { fg = '#e0e2e8',          bg = '#101418' })
  hi('TelescopePromptBorder',   { fg = '#8c9199',             bg = '#101418' })
  hi('TelescopePromptPrefix',   { fg = '#9dcbfc',             bg = '#101418' })
  hi('TelescopePromptCounter',  { fg = '#c2c7cf',  bg = '#101418' })
  hi('TelescopePromptTitle',    { fg = '#101418',             bg = '#9dcbfc' })
  hi('TelescopePreviewTitle',   { fg = '#101418',             bg = '#bac8da' })
  hi('TelescopeResultsTitle',   { fg = '#101418',             bg = '#d4bee5' })
  hi('TelescopeSelection',      { fg = '#e0e2e8',          bg = '#272a2f' })
  hi('TelescopeSelectionCaret', { fg = '#9dcbfc',             bg = '#272a2f' })
  hi('TelescopeMatching',       { fg = '#9dcbfc',             bold = true })

  -- mini.pick
  hi('MiniPickNormal',         { fg = '#e0e2e8',          bg = '#101418' })
  hi('MiniPickBorder',         { fg = '#8c9199',             bg = '#101418' })
  hi('MiniPickPrompt',   { fg = '#e0e2e8',          bg = '#101418' })
  hi('MiniPickPromptPrefix',   { fg = '#9dcbfc',             bg = '#101418' })
  hi('MiniPickBorderText',    { fg = '#101418',             bg = '#9dcbfc' })
  hi('MiniPickMatchCurrent',      { fg = '#e0e2e8',          bg = '#272a2f' })
  hi('MiniPickPromptCaret', { fg = '#9dcbfc',             bg = '#272a2f' })
  hi('MiniPickMatchRanges',       { fg = '#9dcbfc',             bold = true })
end

-- Register a signal handler for SIGUSR1 (matugen updates).
-- The handler re-requires this module, which re-runs the code below, so the
-- previous handle is stopped first; otherwise handlers double on every signal.
if _G.__matugen_signal then
  _G.__matugen_signal:stop()
  _G.__matugen_signal:close()
end

local signal = vim.uv.new_signal()
_G.__matugen_signal = signal
signal:start(
  'sigusr1',
  vim.schedule_wrap(function()
    package.loaded['matugen'] = nil
    require('matugen').setup()
  end)
)

return M
