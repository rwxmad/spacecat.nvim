local util = require('spacecat.util')

local palette = {}

palette = {
  none = 'NONE',
  fg = '#cbcbcb',
  bg = '#171717',
  bg_dark = '#111111',
  bg_light = '#252525',
  grey = '#4c4c4c',
  blue = '#2c9ad9',
  blue_dark = '#1f4b61',
  green = '#25b455',
  teal = '#00b599',
  cyan = '#6fc8c2',
  red = '#f40041',
  orange = '#f17f33',
  yellow = '#e1bc83',
  purple = '#a68bf5',
  magenta = '#e487d5',
}

palette.comment = palette.grey

palette.hint = palette.green
palette.info = palette.cyan
palette.warning = palette.yellow
palette.error = palette.red

palette.black = util.darken(palette.bg, 0.8, '#000000')
palette.border = palette.black
palette.border_light = palette.blue

palette.gitSigns = {
  add = palette.green,
  change = palette.blue,
  delete = palette.red,
}

palette.git = {
  add = palette.green,
  change = palette.blue,
  delete = palette.red,
  conflict = palette.red,
}

return palette
