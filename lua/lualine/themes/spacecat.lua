local c = require('spacecat.palette')

local spacecat = {}

spacecat.normal = {
  a = { bg = c.blue, fg = c.black },
  b = { bg = c.bg_light, fg = c.blue },
  c = { bg = c.bg_dark, fg = c.fg },
}

spacecat.insert = {
  a = { bg = c.green, fg = c.black },
  b = { bg = c.bg_light, fg = c.green },
}

spacecat.command = {
  a = { bg = c.yellow, fg = c.black },
  b = { bg = c.bg_light, fg = c.yellow },
}

spacecat.visual = {
  a = { bg = c.yellow, fg = c.black },
  b = { bg = c.bg_light, fg = c.yellow },
}

spacecat.replace = {
  a = { bg = c.red, fg = c.black },
  b = { bg = c.bg_light, fg = c.red },
}

spacecat.inactive = {
  a = { bg = c.blue, fg = c.blue },
  b = { bg = c.bg, fg = c.bg_light },
  c = { bg = c.bg, fg = c.bg_light },
}

return spacecat
