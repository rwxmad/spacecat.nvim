local M = {}

-- Default config
M.config = {
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  inverse = true,
  overrides = {},
}

-- Initial setup function w/ default or custom settings
function M.setup(config)
  M.config = vim.tbl_extend('force', M.config, config or {})
end

-- Main load function
M.load = function()
  if vim.version().minor < 7 then
    vim.notify_once('spacecat.nvim: you must use neovim 0.7 or higher')
    return
  end

  -- Reset colors
  if vim.g.colors_name then
    vim.cmd('hi clear')
  end

  vim.g.colors_name = 'spacecat'
  vim.o.termguicolors = true

  local groups = require('spacecat.theme').setup()

  -- Apply highlights for each group
  for group, settings in pairs(groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
