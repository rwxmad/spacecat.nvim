<div align="center">
<h1>spacecat.nvim</h1>
<p>A dark Neovim theme written in Lua</p>
</div>

## Requirements

[neovim >=0.8.0](https://github.com/neovim/neovim/wiki/Installing-Neovim)

## Installation

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use 'rwxmad/spacecat.nvim'
```

[vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'rwxmad/spacecat.nvim'
```

## Configuration

```lua
-- Default options:
require('spacecat').setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  inverse = true,
  overrides = {},
})
vim.cmd('colorscheme spacecat')
```

### Plugin Support

- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [GitSigns](https://github.com/lewis6991/gitsigns.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [nvim-navic](https://github.com/SmiteshP/nvim-navic)

## Extras

Extra color config for **Alacritty** can be found in [extras](extras/)
