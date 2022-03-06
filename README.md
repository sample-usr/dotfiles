# Home for my $HOME

The dotfiles are managed by [dotbot](https://github.com/anishathalye/dotbot). The setup is pretty simple, everything is included and there are no requirements, although this is only tested on macos.

I am a fan of `XDG` spec so the config files for tools are defined at `$HOME/.config`. This keeps your `~/` clean.

## Tools
- [zsh](https://www.zsh.org/)
- [homebrew](https://brew.sh/)
- [neovim](https://neovim.io/)
  - see `tools/nvim/init.vim` for plugins
  - `vim-plug` is used for plugin management
- [pure](https://github.com/sindresorhus/pure) - a simple prompt
- [kitty](https://sw.kovidgoyal.net/kitty/) - fast and light terminal
- [exa](https://github.com/ogham/exa) - alternative to `ls` with better git visibility
- [bat](https://github.com/sharkdp/bat) - alternative to `cat` with syntax highlighting for many languages
- [asdf](https://asdf-vm.com) - a really good tooling and language version manager (highly recommended)
  - check `meta/configs/asdf.yaml` for preconfigured tools and languages
- [fzf](https://github.com/junegunn/fzf) - fuzzy find all the things ;)
- [ripgrep](https://github.com/BurntSushi/ripgrep) - faster alternative to `grep`

## Installation
You can select whatever you want to setup/install in the `meta/profiles/workstation` file (you can create one for each of your machines).

```bash
# clone the repo at ~/.dotfiles
./install-profile workstation
```
