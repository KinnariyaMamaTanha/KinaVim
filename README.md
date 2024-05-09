# KinaVim

> My configuration of vim on ubuntu22.04(WSL2).

## Requirements

- a nerd font and a 256-color terminal
- vim >= 9.0, with *python3, conceal, terminal* support.
- curl, git, nodejs, yarn
- python3, gcc, g++, clangd(optional), black(python module)
- fzf, yazi, lazygit(all optional but useful)

## Installation

- Clone the repository.

```shell
git clone https://github.com/KinnariyaMamaTanha/KinaVim ~/.vim
```

- Enter vim for the first time. `vim-plug` will automatically install itself and other plugins.

```shell
vim
```

- Close vim and restart it again. Enter insert mode and `coc.nvim` will automatically install its extensions.

```shell
vim ~/.vim/vimrc
```

- After install all the plugins, you should:

1. Place `~/.vim/plugged/onedark.vim/autoload/airline/themes/onedark.vim` in your `~/.vim/plugged/vim-airline/autoload/airline/themes/` directory
2. Modify the source code of `vim-startify` according to the [issue](https://github.com/mhinz/vim-startify/issues/400)
3. Read the config to be familiar with its keymaps and functions.

## Screenshots


