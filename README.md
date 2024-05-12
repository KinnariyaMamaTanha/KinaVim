# KinaVim

> My configuration of vim on ubuntu22.04(WSL2).

## Requirements

- a nerd font and a 256-color terminal
- vim >= 9.0, with *python3, conceal, terminal, patch* support.
- curl, git, nodejs, yarn, universal-ctags
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

- Startup UI

![](./screenshots/1.png)

- Fuzzy finder

![](./screenshots/2.png)

- Floating terminal

![](./screenshots/3.png)

- ipython integration

![](./screenshots/4.png)

- File tree and tag list

![](./screenshots/5.png)

- Undo history

![](./screenshots/6.png)

- [yazi](https://github.com/sxyazi/yazi) integration

![](./screenshots/7.png)

- Git information integration

![](./screenshots/8.png)

- [lazygit](https://github.com/jesseduffield/lazygit) integration

![](./screenshots/9.png)

- Markdown preview

![](./screenshots/10.png)

- Zen mode

![](./screenshots/11.png)
