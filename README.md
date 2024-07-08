# KinaVim

> My configuration of vim/neovim on ubuntu22.04(WSL2).

## Features

1. Full Support for C, C++, Python, markdown, LaTeX, html, dockerfile, cmake and viml, including auto-completion, formatting, highlighting and linting. You can even view simple PDF files using poppler and vim-pdf plugin.
2. Wonderful file navigation and tag list(powered by LeaderF, coc-explorer, yazi, vista and universal-ctags).
3. Integrated with various apps, including yazi, fzf, git and lazygit.
4. Great English2Chinese translation.
5. Beautiful appearance.
6. Working well for both vim and neovim.(except for undo history)

## Requirements

- terminal with a nerd font and 256-color
- vim >= 9.0, with *python3, conceal, terminal, patch* support.
- curl, git, nodejs, yarn, universal-ctags(Vim only), fd
- For Python:
    - python3, black[^1] [^2](for formatting), ipython, debugpy[^1] [^2](for debugging)
- For C/C++:
    - gcc, g++, clangd[^1], make, cmake, cmake-format[^1], cmake-language-server[^1] [^2], codelldb(for debugging)[^1]
- For LaTeX:
    - texlive, texlab[^1] [^3], zathura on WSL2(not recommended) or SumatraPDF on host Windows located at /mnt/c/Users/YourUserName/AppData/Local/SumatraPDF/SumatraPDF.exe(You need to replace your username in ~/.vim/configs/plugins/vimtex.vim)
- For Assembly:
    - asm-lsp[^1], asmfmt[^1]
- For PDF:
    - poppler(poppler-utils), pdftotext[^2]
- fzf, yazi, lazygit(all optional but useful)
- For Neovim users: pynvim(python module)

[^1]: If using Neovim, can be installed with mason.nvim
[^2]: Can be installed with pip or conda
[^3]: Can be installed with cargo

## Installation

- Clone the repository.

```bash
git clone https://github.com/KinnariyaMamaTanha/KinaVim ~/.vim
```

- Enter vim/neovim for the first time. `vim-plug` will automatically install itself and other plugins.

```bash
vim
# nvim
```

- Close vim/neovim and restart it again. Enter insert mode and `coc.nvim` will automatically install its extensions.

```bash
vim ~/.vim/vimrc
# nvim ~/.vim/vimrc
```

- After install all the plugins, you should:

1. For **Vim** users: Place `~/.vim/plugged/onedark.vim/autoload/airline/themes/onedark.vim` in your `~/.vim/plugged/vim-airline/autoload/airline/themes/` directory
2. For **Vim** users: modify the source code of `vim-startify` in `~/.vim/plugged/vim-startify/autoload/startify.vim` according to the [issue](https://github.com/mhinz/vim-startify/issues/400#issuecomment-565858638)（6.9.2024: I forked the code of [mhinz/vim-startify](https://github.com/mhinz/vim-startify) and make some modifications, so now you don't need to fix the trouble manually, however, I won't develop any other functions so you may still need to switch to the original repository）
3. For **Neovim** users: see neovim's [Transitioning from Vim](https://neovim.io/doc/user/nvim.html#nvim-from-vim).
4. For **Neovim** users: add `export PATH="$PATH:$HOME/.local/share/nvim/mason/bin` to your `.bashrc` or `.zshrc` or so, then install LSPs, DAPs, etcs with mason.nvim.
5. Read the configurations to be familiar with its keymaps and functions.

## Screenshots

### Startup UI

<details>
  <summary><b>vim</b></summary>

![vim](./screenshots/1.png)

</details>

<details>
  <summary><b>neovim</b></summary>

![neovim](./screenshots/13.png)

</details>

### Fuzzy finder

<details>
  <summary><b>vim</b></summary>

![vim](./screenshots/2.png)

</details>

<details>
  <summary><b>neovim</b></summary>

![Neovim](./screenshots/16.png)

</details>

### Floating terminal

<details>
  <summary><b>vim</b></summary>

![Floaterm](./screenshots/3.png)

</details>

### ipython integration

<details>
  <summary><b>vim</b></summary>

![vim](./screenshots/4.png)

</details>

<details>
  <summary><b>neovim</b></summary>

![neovim](./screenshots/19.png)

</details>

### Code space

<details>
  <summary><b>vim</b></summary>

![vim](./screenshots/5.png)

</details>

<details>
  <summary><b>neovim</b></summary>

![neovim](./screenshots/14.png)

</details>

### Undo history

<details>
  <summary><b>vim</b></summary>

![vim](./screenshots/6.png)

</details>

<details>
  <summary><b>neovim</b></summary>

![Neovim](./screenshots/17.png)

</details>

### [yazi](https://github.com/sxyazi/yazi) integration

<details>
  <summary><b>vim</b></summary>

![yazi](./screenshots/7.png)

</details>

### Git information integration

<details>
  <summary><b>vim and neovim</b></summary>

![vim](./screenshots/8.png)

</details>

### [lazygit](https://github.com/jesseduffield/lazygit) integration

<details>
  <summary><b>vim and neovim</b></summary>

![lazygit](./screenshots/9.png)

</details>

### Markdown preview

<details>
  <summary><b>vim</b></summary>

![vim](./screenshots/10.png)

</details>

<details>
  <summary><b>neovim</b></summary>

![neovim](./screenshots/12.png)

</details>

### Zen mode

<details>
  <summary><b>vim</b></summary>

![vim](./screenshots/11.png)

</details>

<details>
  <summary><b>neovim</b></summary>

![neovim](./screenshots/18.png)

</details>

### Debugging

<details>
  <summary><b>neovim</b></summary>

![debug](./screenshots/15.png)

</details>
