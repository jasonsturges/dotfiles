# dotfiles

<img width="1526" alt="screen-capture" src="https://github.com/jasonsturges/dotfiles/assets/1213591/b6ddbaa5-a373-48ac-baf8-819e658796af">

Personal dotfiles of development environment

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

Leader key: `Spacebar`

#### LazyVim and plugins

| Mode | Input         | Action                                           |
| :--- | :------------ | :----------------------------------------------- |
| n    | `<leader> l`  | Lazy                                             |
| n    | `:LazyExtras` | Lazy extras                                      |
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
| n    | `<S-I>`       | Insert text before first non-blank character      |
| n    | `a`           | Append text after the cursor                      |
| n    | `<S-A>`       | Append text at end of line                        |
| n    | `o`           | New line below the current line                   |
| n    | `<S-O>`       | New line above the current line                   |
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
| nv   | `<S-J>`       | Join lines (with next line, or highlighted lines) |
| v    | `gc`          | Comment (multiple lines with _number_ `gc`)       |
| n    | `gco`         | Comment below the current line                    |
| n    | `gcO`         | Comment above the current line                    |
| v    | `>`           | Indent                                            |
| v    | `<`           | Outdent                                           |
| n    | `<leader> cr` | Rename                                            |
| nv   | `<leader> cf` | Format                                            |
| n    | `<leader> uf` | Toggle auto format (Global)                       |
| n    | `<leader> uF` | Toggle auto format (Buffer)                       |
| n    | `<leader> us` | Toggle spelling                                   |
| n    | `<leader> uw` | Toggle word wrap                                  |
| n    | `<leader> ul` | Toggle line numbers                               |
| n    | `<leader> uL` | Toggle relative line numbers                      |
| nv   | `<leader> ca` | Code actions                                      |
| nv   | `<C-n>`       | Autocompletion select from dropdown               |
| inxs | `<C-c>`       | Exit insert mode                                  |
| inxs | `<C-s>`       | Save file                                         |
| n    | `<leader> fn` | New file                                          |
| n    | `<leader> cR` | Rename file                                       |
| n    | `<leader> cp` | Markdown preview                                  |

#### Selecting

| Mode | Input   | Action                                                                       |
| :--- | :------ | :--------------------------------------------------------------------------- |
| v    | `v`     | Enter visual mode, followed by vim movement (examples: `v$`, `v^`, or `v8j`) |
| v    | `<S-V>` | Select line                                                                  |
| v    | `ggVG`  | Select all                                                                   |
| v    | `viw`   | Inner word (select word)                                                     |
| v    | `vib`   | Inner block (select block)                                                   |
| v    | `vit`   | Inner tag block                                                              |
| v    | `vi"`   | Inner quotes (select everything inside of `"` quotes)                        |
| v    | `vi{`   | Inner braces (select everything inside of `{}` braces)                       |
| v    | `vi[`   | Inner brackets (select everything inside of `[]` brackets)                   |
| v    | `vaw`   | Outer word (select word)                                                     |
| v    | `vab`   | Outer block (select block)                                                   |
| v    | `vat`   | Outer tag block                                                              |
| v    | `va"`   | Outer quotes (select everything including `"` quotes)                        |
| v    | `va{`   | Outer braces (select everything including `{}` braces)                       |
| v    | `va[`   | Outer brackets (select everything including `[]` brackets)                   |

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

| Mode | Input            | Action                                                   |
| :--- | :--------------- | :------------------------------------------------------- |
| n    | `\*`             | Search forward for the identifier under the cursor       |
| n    | `#`              | Search backward for the identifier under the cursor      |
| n    | `/`              | Search forward, repeat last search with `n`              |
| n    | `?`              | Search backward, repeat last search with `N`             |
| n    | `<leader> SPACE` | Find files from root directory                           |
| n    | `<leader> fF`    | Find files from current working directory                |
| n    | `<leader> /`     | Live grep: search in all files (also: `<leader> sg>`)    |
| n    | `<leader> sG`    | Live grep: search in cwd                                 |
| n    | `s`              | Flash: search window, use labels to jump to any location |
| n    | `:s/old/new/g`   | Substitute `old` with `new` in the current line          |
| n    | `:%s/old/new/g`  | Substitute `old` with `new` in the current file          |

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

| M   | Input         | Action                            |
| :-- | :------------ | :-------------------------------- |
| n   | `<leader> st` | Todos: All todos in the workspace |
| n   | `<leader> xt` | Todo (Trouble)                    |
| n   | `[t`          | Previous Todo                     |
| n   | `]t`          | Next Todo                         |

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
| n    | `<S-P>`      | Preview file                            |
| n    | `?`          | Help                                    |

#### Errors

| Mode | Input         | Action                            |
| :--- | :------------ | :-------------------------------- |
| n    | `<leader> xx` | Document diagnostics: error list  |
| n    | `<leader> xX` | Workspace diagnostics: error list |
| n    | `<leader> sq` | Quickfix list                     |
| n    | `<leader> xq` | Quickfix list                     |

#### TODOs

| Mode | Input         | Action                            |
| :--- | :------------ | :-------------------------------- |
| n    | `<leader> xt` | Todos: All todos in the workspace |

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

| Mode | Input         | Action              |
| :--- | :------------ | :------------------ |
| nv   | `<leader> a`  | Copilot             |
| nv   | `<leader> aa` | Toggle Copilot chat |
| nv   | `<leader> ad` | Diagnostic help     |
| nv   | `<leader> ap` | Prompt actions      |
| nv   | `<leader> aq` | Quick chat          |
| nv   | `<leader> ax` | Clear chat          |

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
| n    | :terminal     | Open terminal       |
| n    | `<C-\> <C-n>` | Exit terminal       |

#### Command line

| Input         | Action                                         |
| :------------ | :--------------------------------------------- |
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
