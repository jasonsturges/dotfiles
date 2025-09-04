# Dotfiles Management

A simple Bash script to manage macOS configuration files using Git and symlinks.

![Screen Capture](https://github.com/jasonsturges/dotfiles/assets/1213591/b6ddbaa5-a373-48ac-baf8-819e658796af)

## Table of Contents

- [Overview](#overview)
- [Getting Started](#getting-started)
  - [First-Time Setup on Your Current Machine](#first-time-setup-on-your-current-machine)
  - [Setup on a New Machine](#setup-on-a-new-machine)
- [Daily Usage](#daily-usage)
- [Manual Backup Approach](#manual-backup-approach)
- [Important Notes](#important-notes)
- [Troubleshooting](#troubleshooting)
- [Environment](#environment)
- [Neovim](#neovim)
- [TMUX](#tmux)

## Overview

This script simplifies managing dotfiles (configuration files) by either:

- **Symlink-based management**: Run `./dotfiles install` to create symlinks from your home directory to the Git repository, making the repository the source of truth. Changes to your configs are instantly reflected in the repository, enabling real-time version control.
- **Manual backup**: Run `./dotfiles backup` to copy your configuration files to the repository for manual tracking without symlinks.

## Getting Started

Run the script with one of these commands:

```bash
./dotfiles.sh install    # Set up symlinks for new machine
./dotfiles.sh backup     # Copy current configs to repository
./dotfiles.sh update     # Commit and push changes to Git
./dotfiles.sh help       # Show help message
```

### First-Time Setup on Your Current Machine

To start managing your dotfiles with this repository:

1. **Copy existing configs to the repository**:

   ```bash
   ./dotfiles.sh backup
   ```

2. **Commit the configs**:

   ```bash
   git add .
   git commit -m "Initial dotfiles backup"
   git push
   ```

3. **Switch to symlink-based management**:

   ```bash
   ./dotfiles.sh install
   ```

This creates symlinks from your home directory to the repository, making it the source of truth.

### Setup on a New Machine

To set up dotfiles on a new machine:

1. **Install dotfiles before launching applications**:

   ```bash
   ./dotfiles.sh install
   ```

2. **Install your applications** (e.g., Neovim, tmux, Kitty). They will automatically use the symlinked configurations.

## Daily Usage

With symlink-based management, edit your configs as usual:

```bash
nvim ~/.config/nvim/init.lua  # Edits the file in the repository
```

To save changes to the repository:

```bash
./dotfiles.sh update  # Quick commit and push
# OR
git add .
git commit -m "Detailed commit message"
git push
```

## Manual Backup Approach

If you prefer not to use symlinks, you can manually back up your configs:

1. Keep your configuration files in their default locations (e.g., `~/.zshrc`).
2. Run the backup command whenever you want to save changes:

   ```bash
   ./dotfiles.sh backup
   ```

3. Commit and push the changes:

   ```bash
   git add .
   git commit -m "Updated configs"
   git push
   ```

**Note**: This approach requires manual backups and does not provide real-time version tracking.

## Important Notes

- **Run `install` before launching applications** on a new machine to ensure symlinks are in place.
- **Use `backup` only once** during initial setup if using symlinks. After `install`, edits happen directly in the repository.
- **Repository as source of truth**: With symlinks, your repository files are directly used by applications.
- **Backup safety**: Existing files are backed up to `~/.dotfiles_backup_<timestamp>` during `install` if they are not already symlinks.

## Troubleshooting

- **Symlink errors**: Ensure you have write permissions in `~/.config` and other target directories. Check for existing files or symlinks that may conflict.
- **Missing dotfiles**: If a dotfile (e.g., `~/.zshrc`) is not found during `backup`, ensure it exists in your home directory.
- **Git issues**: Verify your repository is properly initialized (`git init`) and configured with a remote (`git remote add origin <url>`).
- **Application config not updating**: Confirm symlinks are correctly set up by running `ls -l` in `~/.config` or `~` to verify links point to the repository.

## Environment

Install [Kitty](https://sw.kovidgoyal.net/kitty/) terminal:

```sh
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```

Install [Nerd Fonts](https://www.nerdfonts.com/):

```sh
brew install --cask font-jetbrains-mono-nerd-font
```

Install [Neovim](https://neovim.io/):

```sh
brew install neovim
```

Install [lazygit](https://github.com/jesseduffield/lazygit):

```shell
brew install lazygit
```

Install [ripgrep](https://github.com/BurntSushi/ripgrep) (used for live grep):

```shell
brew install ripgrep
```

Install [fd](https://github.com/sharkdp/fd) (used by Telescope for find):

```shell
brew install fd
```

Install [fzf](https://github.com/junegunn/fzf) (used for fuzzy finder by Telescope):

```shell
brew install fzf
```

Install [wget](https://www.gnu.org/software/wget/):

```shell
brew install wget
```

## Neovim

Configuration for Neovim, Vim-based text editor.

- [Neovim](https://neovim.io/)
  - [Quick Reference](https://neovim.io/doc/user/quickref.html)
  - [Command Index](https://neovim.io/doc/user/vimindex.html)
- [LazyVim](https://www.lazyvim.org/)
  - [News](https://www.lazyvim.org/news)
  - [Keymaps](https://www.lazyvim.org/keymaps)

### Keybindings

Neovim key mapping, based on macOS.

#### Commands

| Command               | Description                                             |
| :-------------------- | :------------------------------------------------------ |
| `:map`                | Show all key mappings for all modes                     |
| `:map <key>`          | Show mapping for specific key (e.g., `:map <leader>xt`) |
| `:nmap`               | Show normal mode mappings only                          |
| `:imap`               | Show insert mode mappings only                          |
| `:vmap`               | Show visual mode mappings only                          |
| `:verbose map <key>`  | Show mapping with source file location                  |
| `:help`               | Open help system                                        |
| `:help <topic>`       | Get help on specific topic                              |
| `:WhichKey`           | Show available keybindings (LazyVim)                    |
| `:Lazy`               | Open plugin manager                                     |
| `:LazyExtras`         | Lazy extras                                             |
| `:Mason`              | Open LSP/tool installer                                 |
| `:LspInfo`            | Show LSP client information                             |
| :TSInstallInfo        | All available Treesitter language parsers               |
| :TSInstall lang       | Install Treesitter parser for a specific language       |
| `:Telescope keymaps`  | Browse all keymaps in Telescope                         |
| `:checkhealth`        | Run health checks for plugins/config                    |
| `:messages`           | Show recent messages/errors                             |
| `:pwd`                | Show current working directory                          |
| `:cd <path>`          | Change working directory                                |
| `:e <file>`           | Edit/open file                                          |
| `:w`                  | Write/save current file                                 |
| `:q`                  | Quit current window                                     |
| `:qa`                 | Quit all windows                                        |
| `:wq`                 | Write and quit                                          |
| `:terminal`           | Open terminal in current window                         |
| `:split \| terminal`  | Open terminal in horizontal split                       |
| `:vsplit \| terminal` | Open terminal in vertical split                         |
| `:tabnew \| terminal` | Open terminal in new tab                                |
| `:set wrap`           | Enable word wrap                                        |
| `:set nowrap`         | Disable word wrap                                       |
| `:set wrap!`          | Toggle word wrap on/off                                 |

#### LazyVim and plugins

Leader key: `Spacebar`

| Mode | Input         | Action                                           |
| :--- | :------------ | :----------------------------------------------- |
| n    | `<leader> l`  | Lazy                                             |
| n    | `<leader> cm` | Mason: Language servers, linters, and formatters |
| n    | `<leader> e`  | Neo-tree: File system tree sidebar               |
| n    | `<leader> gg` | Lazygit: Terminal UI for git commands            |
| n    | `<leader> cs` | Aerial: Code outline                             |
| n    | `<leader> sr` | Spectre: Search and replace                      |
| n    | `<leader> sn` | Noice                                            |
| n    | `<leader> sh` | Search Help                                      |
| n    | `<leader> sk` | Search Keymaps                                   |
| n    | `<leader> qq` | Quit all                                         |

#### Windows

| Mode | Input         | Action                                  |
| :--- | :------------ | :-------------------------------------- |
| n    | `<leader> -`  | Split window horizontal                 |
| n    | `<leader> \|` | Split window vertical                   |
| n    | `<leader> wd` | Delete window: Close the current window |
| n    | `<leader> ww` | Other window                            |
| n    | `<C-h>`       | Go to left window                       |
| n    | `<C-j>`       | Go to lower window                      |
| n    | `<C-k>`       | Go to upper window                      |
| n    | `<C-l>`       | Go to right window                      |

#### Buffers

| Mode | Input         | Action                                  |
| :--- | :------------ | :-------------------------------------- |
| n    | `<S-H>`       | Previous buffer (left)                  |
| n    | `<S-L>`       | Next buffer (right)                     |
| n    | `<leader> fb` | Buffers                                 |
| n    | `<leader> be` | Buffer explorer                         |
| n    | `<leader> bd` | Delete buffer: Close the current buffer |
| n    | `<leader> bl` | Delete buffers to the left              |
| n    | `<leader> br` | Delete buffers to the right             |
| n    | `<leader> bo` | Delete other buffers                    |
| n    | `<leader> fr` | Recent                                  |
| n    | `<leader> fR` | Recent cwd                              |

#### Scrolling

| Mode | Input      | Action                                         |
| :--- | :--------- | :--------------------------------------------- |
| inv  | `<S-Up>`   | Move one screen backward (page up)             |
| inv  | `<S-Down>` | Move one screen forward (page down)            |
| nv   | `zt`       | Redraw current line at top of window           |
| nv   | `zz`       | Redraw current line at center of window        |
| nv   | `zb`       | Redraw current line at bottom of window        |
| nv   | `zH`       | Scroll screen half a screen width to the right |
| nv   | `zL`       | Scroll screen half a screen width to the left  |

#### Movement

| Mode | Input         | Action                                                              |
| :--- | :------------ | :------------------------------------------------------------------ |
| nv   | `h`           | Move left                                                           |
| nv   | `j`           | Move down                                                           |
| nv   | `k`           | Move up                                                             |
| nv   | `l`           | Move right                                                          |
| nv   | `b`           | Previous word                                                       |
| nv   | `w`           | Next word                                                           |
| nv   | `e`           | Next end of word                                                    |
| nv   | `0`           | First character in line                                             |
| nv   | `^`           | First non-blank character in line                                   |
| nv   | `$`           | End of line                                                         |
| nv   | `{`           | Previous empty line                                                 |
| nv   | `}`           | Next empty line                                                     |
| nv   | `%`           | Find next brace or bracket on the current line, and go to its match |
| nv   | `gM`          | Goto middle of line                                                 |
| nv   | `gg`          | Goto first line, beginning of document                              |
| nv   | `G`           | Goto last line, end of document                                     |
| nv   | `[number]gg`  | Goto line _number_ (also works with `[number]G`)                    |
| nv   | `[number]%`   | Goto line at _number_ percentage (as in `25%`, `50%`, or `100%`)    |
| n    | `<leader> ss` | Goto symbol                                                         |
| n    | `<leader> sS` | Goto symbol (Workspace)                                             |
| n    | `<leader> sw` | Word (root directory)                                               |
| n    | `<leader> sW` | Word (cwd)                                                          |
| n    | `gd`          | Goto definition                                                     |
| n    | `gD`          | Goto declaration                                                    |
| n    | `gI`          | Goto implementation                                                 |
| n    | `gy`          | Goto type definition                                                |
| n    | `gr`          | References                                                          |
| n    | `]]`          | Next reference                                                      |
| n    | `[[`          | Previous reference                                                  |
| n    | `K`           | Hover                                                               |

#### Editing

| Mode | Input         | Action                                            |
| :--- | :------------ | :------------------------------------------------ |
| n    | `i`           | Insert text before the cursor                     |
| n    | `I`           | Insert text before first non-blank character      |
| n    | `a`           | Append text after the cursor                      |
| n    | `A`           | Append text at end of line                        |
| n    | `o`           | New line below the current line                   |
| n    | `O`           | New line above the current line                   |
| n    | `x`           | Delete character                                  |
| n    | `dw`          | Delete word                                       |
| n    | `dd`          | Delete current line                               |
| n    | `D`           | Delete to end of line                             |
| n    | `dG`          | Delete to end of file                             |
| n    | `dgg`         | Delete to beginning of file                       |
| n    | `r`           | Replace character                                 |
| n    | `R`           | Replace mode                                      |
| n    | `u`           | Undo                                              |
| n    | `<C-r>`       | Redo                                              |
| inv  | `<OPTION-j>`  | Move line down                                    |
| inv  | `<OPTION-k>`  | Move line up                                      |
| nv   | `J`           | Join lines (with next line, or highlighted lines) |
| v    | `gc`          | Comment (multiple lines with _number_ `gc`)       |
| n    | `gco`         | Comment below the current line                    |
| n    | `gcO`         | Comment above the current line                    |
| v    | `>`           | Indent                                            |
| v    | `<`           | Outdent                                           |
| nv   | `<leader> ca` | Code action                                       |
| n    | `<leader> cA` | Source action                                     |
| n    | `<leader> co` | Organize imports                                  |
| n    | `<leader> cM` | Add missing imports                               |
| n    | `<leader> cu` | Remove unused imports                             |
| nv   | `<leader> cf` | Format                                            |
| n    | `<leader> cr` | Rename                                            |
| n    | `<leader> cR` | Rename file                                       |
| n    | `<leader> cp` | Markdown preview                                  |
| n    | `<leader> uf` | Toggle auto format (Global)                       |
| n    | `<leader> uF` | Toggle auto format (Buffer)                       |
| n    | `<leader> us` | Toggle spelling                                   |
| n    | `<leader> uw` | Toggle word wrap                                  |
| n    | `<leader> ul` | Toggle line numbers                               |
| n    | `<leader> uL` | Toggle relative line numbers                      |
| nv   | `<C-n>`       | Autocompletion select from dropdown               |
| inxs | `<C-c>`       | Exit insert mode                                  |
| inxs | `<C-s>`       | Save file                                         |
| n    | `<leader> fn` | New file                                          |

#### Selecting

| Mode | Input      | Action                                                                       |
| :--- | :--------- | :--------------------------------------------------------------------------- |
| v    | `v`        | Enter visual mode, followed by vim movement (examples: `v$`, `v^`, or `v8j`) |
| v    | `V`        | Select line                                                                  |
| v    | `ggVG`     | Select all                                                                   |
| v    | `viw`      | Inner word (select word)                                                     |
| v    | `vib`      | Inner block (select block)                                                   |
| v    | `vit`      | Inner tag block                                                              |
| v    | `vi"`      | Inner quotes (select everything inside of `"` quotes)                        |
| v    | `vi{`      | Inner braces (select everything inside of `{}` braces)                       |
| v    | `vi[`      | Inner brackets (select everything inside of `[]` brackets)                   |
| v    | `vaw`      | Outer word (select word)                                                     |
| v    | `vab`      | Outer block (select block)                                                   |
| v    | `vat`      | Outer tag block                                                              |
| v    | `va"`      | Outer quotes (select everything including `"` quotes)                        |
| v    | `va{`      | Outer braces (select everything including `{}` braces)                       |
| v    | `va[`      | Outer brackets (select everything including `[]` brackets)                   |
| v    | `vt{char}` | Select until character (exclusive)                                           |
| v    | `vf{char}` | Select until and including character (inclusive)                             |
| v    | `vT{char}` | Select backwards until character (exclusive)                                 |
| v    | `vF{char}` | Select backwards until and including character (inclusive)                   |

#### Copying and moving text

| Mode | Input | Action                                                        |
| :--- | :---- | :------------------------------------------------------------ |
| nv   | `y`   | Yank into register (copy)                                     |
| nv   | `yy`  | Yank current line into register (copy, also mapped as `<S-Y`) |
| nv   | `y$`  | Yank from cursor to end of line register (copy)               |
| nv   | `y^`  | Yank from cursor to first non-blank character of line (copy)  |
| nv   | `d`   | Delete (cut)                                                  |
| nv   | `dd`  | Delete current line (cut)                                     |
| nv   | `p`   | Put register after cursor                                     |
| nv   | `P`   | Put register before cursor                                    |
| nv   | `gp`  | Put register after selection                                  |
| nv   | `gP`  | Put register before selection                                 |
| nv   | `yiw` | Yank inner word (copy word)                                   |
| nv   | `diw` | Delete inner word (delete word)                               |

#### Searching and replacing

| Mode | Input           | Action                                                   |
| :--- | :-------------- | :------------------------------------------------------- |
| n    | `/pattern`      | Search forward for pattern                               |
| n    | `?pattern`      | Search backward for pattern                              |
| n    | `n`             | Go to next search match                                  |
| n    | `N`             | Go to previous search match                              |
| n    | `*`             | Search forward for word under cursor                     |
| n    | `#`             | Search backward for word under cursor                    |
| n    | `/<Enter>`      | Repeat last search                                       |
| n    | `/<C-r><C-w>`   | Put word under cursor into search prompt                 |
| n    | `:nohl`         | Clear search highlighting                                |
| n    | `<leader> ff`   | Find files from root directory                           |
| n    | `<leader> fF`   | Find files from current working directory                |
| n    | `<leader> fr`   | Find recent files                                        |
| n    | `<leader> fR`   | Find recent files (cwd)                                  |
| n    | `<leader> sg`   | Live grep: search in all files                           |
| n    | `<leader> sG`   | Live grep: search in cwd                                 |
| n    | `s`             | Flash: search window, use labels to jump to any location |
| n    | `:s/old/new/g`  | Substitute `old` with `new` in current line              |
| n    | `:%s/old/new/g` | Substitute `old` with `new` in entire file               |

#### Refactoring

| Mode | Input         | Action                   |
| :--- | :------------ | :----------------------- |
| n    | `<leader> rb` | Extract block            |
| n    | `<leader> rf` | Extract block to file    |
| v    | `<leader> rf` | Extract function         |
| v    | `<leader> rR` | Extract function to file |
| v    | `<leader> rx` | Extract variable         |
| nv   | `<leader> ri` | Inline variable          |
| nv   | `<leader> rp` | Debug print variable     |
| v    | `<leader> rs` | Refactor                 |
| n    | `<leader> rP` | Debug print              |
| n    | `<leader> rc` | Debug cleanup            |

#### TODOs

| Mode | Input         | Action                            |
| :--- | :------------ | :-------------------------------- |
| n    | `<leader> st` | Todos: All todos in the workspace |
| n    | `<leader> xt` | Todo (Trouble)                    |
| n    | `<leader> xT` | Todo (Telescope)                  |
| n    | `[t`          | Previous Todo                     |
| n    | `]t`          | Next Todo                         |

#### Code Folding

| Mode | Input | Action                           |
| :--- | :---- | :------------------------------- |
| n    | `zc`  | Close one fold under the cursor  |
| n    | `zC`  | Close all folds under the cursor |
| n    | `zm`  | Fold more                        |
| n    | `zM`  | Close all folds                  |
| n    | `zo`  | Open one fold under the cursor   |
| n    | `zO`  | Open all folds under the cursor  |
| n    | `zr`  | Reduce folding                   |
| n    | `zR`  | Open all folds                   |

#### File Explorer: Neo-tree

| Mode | Input        | Action                                  |
| :--- | :----------- | :-------------------------------------- |
| n    | `<leader> e` | Neo-tree: Open file system tree sidebar |
| n    | `<CR>`       | Open directory or file                  |
| n    | `a`          | Add file                                |
| n    | `d`          | Delete file                             |
| n    | `P`          | Preview file                            |
| n    | `H`          | Toggle hidden files                     |
| n    | `?`          | Help                                    |

#### Errors

| Mode | Input         | Action                         |
| :--- | :------------ | :----------------------------- |
| n    | `<leader> xx` | Diagnostics: error list        |
| n    | `<leader> xX` | Buffer diagnostics: error list |
| n    | `<leader> sq` | Quickfix list                  |
| n    | `<leader> xq` | Quickfix list                  |

#### Git

| Mode | Input         | Action                   |
| :--- | :------------ | :----------------------- |
| n    | `<leader> gg` | Git                      |
| n    | `<leader> gs` | Git status               |
| n    | `<leader> ge` | Git explorer             |
| n    | `<leader> gc` | Git commit history       |
| n    | `<leader> gl` | Git log                  |
| n    | `<leader> gL` | Git log (cwd)            |
| n    | `<leader> gf` | Git current file history |
| n    | `<leader> gb` | Git blame line           |
| n    | `<leader> fg` | Find git files           |
| n    | `<leader> gB` | Open repo in the browser |

#### Copilot

| Mode | Input              | Action              |
| :--- | :----------------- | :------------------ |
| nv   | `<leader> a`       | Copilot             |
| nv   | `<leader> aa`      | Toggle Copilot chat |
| nv   | `<leader> ad`      | Diagnostic help     |
| nv   | `<leader> ap`      | Prompt actions      |
| nv   | `<leader> aq`      | Quick chat          |
| nv   | `<leader> ax`      | Clear chat          |
| n    | `:Copilot enable`  | Enable Copilot      |
| n    | `:Copilot disable` | Disable Copilot     |

#### Information

| Mode | Input    | Action                                                      |
| :--- | :------- | :---------------------------------------------------------- |
| n    | `<C-g>`  | Show current file name with path                            |
| n    | `ga`     | Show ascii value of character under cursor                  |
| n    | `g8`     | Show utf-8 encoding byte sequence of character under cursor |
| n    | `g<C-G>` | Show cursor column, line, word, and byte position           |

#### Terminal

| Mode | Input         | Action              |
| :--- | :------------ | :------------------ |
| n    | `<leader> ft` | Terminal (root dir) |
| n    | `<leader> fT` | Terminal (cwd)      |
| n    | `<C-\> <C-n>` | Exit terminal       |
| n    | `<C-/>`       | Toggle terminal     |
| t    | `<esc><esc>`  | Enter normal mode   |

#### Package Info

| Mode | Input         | Action                               |
| :--- | :------------ | :----------------------------------- |
| n    | `<leader> ni` | Install a new dependency             |
| n    | `<leader> nu` | Update dependency on line            |
| n    | `<leader> ns` | Show dependency versions             |
| n    | `<leader> nc` | Install different dependency version |
| n    | `<leader> nd` | Delete dependency on line            |

#### Command line

| Input         | Action                                         |
| :------------ | :--------------------------------------------- |
| :             | Command line mode                              |
| `<leader> sC` | Commands                                       |
| `<leader> :`  | Command history                                |
| `<C-u>`       | Remove all characters (clear the command line) |
| `<C-w>`       | Delete word in front of the cursor             |
| `<C-k>`       | Enter digraph                                  |

## TMUX

Configuration for TMUX, terminal multiplexer.

### Keybindings

TMUX key mapping, based on macOS.

Prefix: `<CONTROL-b>`

| Input                  | Action                                     |
| :--------------------- | :----------------------------------------- |
| `<prefix> c`           | Create window                              |
| `<prefix> n`           | Next window                                |
| `<prefix> p`           | Previous window                            |
| `<prefix> 0`           | Select window 0 (or enter window _number_) |
| `<prefix> ,`           | Rename window                              |
| `<prefix> w`           | List windows                               |
| `<prefix> %`           | Split window vertically                    |
| `<prefix> "`           | Split window horizontally                  |
| `<prefix> m`           | Toggle window maximize                     |
| `<prefix> z`           | Toggle pane zoom                           |
| `<prefix> Arrow`       | Cycle window focus in direction            |
| `<prefix> d`           | Detach from session                        |
| `<prefix> s`           | List sessions                              |
| `<prefix> q`           | Show window numbers                        |
| `<prefix> &`           | Kill window                                |
| `<prefix> x`           | Kill pane                                  |
| `<prefix> <CMD-Arrow>` | Resize pane in direction                   |
| `<prefix> I`           | Install plugins                            |
