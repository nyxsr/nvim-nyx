# My neovim config

This isn't anything all too special, just your standard config.

<!--toc:start-->

- [My neovim config](#my-neovim-config)
  - [IMPORTANT NOTICES](#important-notices)
  - [Installation](#installation)
  - [Dependencies](#dependencies)
  - [Plugins](#plugins)
  - [License](#license)

<!--toc:end-->

## IMPORTANT NOTICES

1. This config is oriented with **_myself_** in mind, so there may possibly be
   confusing or otherwise strange choices made in the config. Regardless, it works
   for me. Decide for yourself if I made a janky shitbox of a config, or something
   actually usable for people other than me.

1. This is a living config, assume nothing is final. Plugins will inevitably
   change and break. Again, this is a config for myself, not for the masses. Use
   at your own risk.

1. This config was build around the **_latest_** version of neovim, as I run an
   Arch-linux based distro. Do not expect this to work without the latest
   neovim package.

## Installation

```bash
git clone --depth 1 https://codeberg.org/j4de/nvim.git ~/.config/nvim && nvim
```

## Dependencies

| Dependency | Reason                                 |
| ---------- | -------------------------------------- |
| git        | To install the config and plugins      |
| npm        | Used to install certain mason packages |
| ripgrep    | Used to give telescope results         |

## Plugins

- [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [actions-preview.nvim](https://github.com/aznhe21/actions-preview.nvim)
- [animation.nvim](https://github.com/anuvyklack/animation.nvim)
- [better-escape.nvim](https://github.com/max397574/better-escape.nvim)
- [blink.cmp](https://github.com/saghen/blink.cmp)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [conform.nvim](https://github.com/stevearc/conform.nvim)
- [dial.nvim](https://github.com/monaqa/dial.nvim)
- [fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [flit.nvim](https://github.com/ggandor/flit.nvim)
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [goto-breakpoints.nvim](https://github.com/ofirgall/goto-breakpoints.nvim)
- [helpview.nvim](https://github.com/OXY2DEV/helpview.nvim)
- [highlight-undo.nvim](https://github.com/tzachar/highlight-undo.nvim)
- [in-and-out.nvim](https://github.com/ysmb-wtsg/in-and-out.nvim)
- [inc-rename.nvim](https://github.com/smjonas/inc-rename.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [lazydev.nvim](https://github.com/folke/lazydev.nvim)
- [leap.nvim](https://github.com/ggandor/leap.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [luvit-meta](https://github.com/Bilal2453/luvit-meta)
- [mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [middleclass](https://github.com/anuvyklack/middleclass)
- [mini.surround](https://github.com/echasnovski/mini.surround)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [neogit](https://github.com/NeogitOrg/neogit)
- [nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [nvim-gomove](https://github.com/booperlv/nvim-gomove)
- [nvim-lightbulb](https://github.com/kosayoda/nvim-lightbulb)
- [nvim-lint](https://github.com/mfussenegger/nvim-lint)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [nvim-nio](https://github.com/nvim-neotest/nvim-nio)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-origami](https://github.com/chrisgrieser/nvim-origami)
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [persistence.nvim](https://github.com/folke/persistence.nvim)
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [precognition.nvim](https://github.com/tris203/precognition.nvim)
- [rainbow-delimiters.nvim](https://github.com/hiphish/rainbow-delimiters.nvim)
- [snacks.nvim](https://github.com/folke/snacks.nvim)
- [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [treesj](https://github.com/Wansmer/treesj)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [undotree](https://github.com/mbbill/undotree)
- [vim-cool](https://github.com/romainl/vim-cool)
- [vim-kitty](https://github.com/fladson/vim-kitty)
- [vim-matchup](https://github.com/andymass/vim-matchup)
- [vim-repeat](https://github.com/tpope/vim-repeat)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [windows.nvim](https://github.com/anuvyklack/windows.nvim)

## License

MIT-0
