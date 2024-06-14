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

Leader key: <kbd>Spacebar</kbd>

#### LazyVim and plugins

| Mode | Input                                       | Action                                           |
| :--- | :------------------------------------------ | :----------------------------------------------- |
| n    | <kbd>leader</kbd> <kbd>l</kbd>              | Lazy                                             |
| n    | <kbd>leader</kbd> <kbd>c</kbd> <kbd>m</kbd> | Mason: Language servers, linters, and formatters |
| n    | <kbd>leader</kbd> <kbd>e</kbd>              | Neo-tree: File system tree sidebar               |
| n    | <kbd>leader</kbd> <kbd>g</kbd> <kbd>g</kbd> | Lazygit: Terminal UI for git commands            |
| n    | <kbd>leader</kbd> <kbd>c</kbd> <kbd>s</kbd> | Aerial: Code outline                             |
| n    | <kbd>leader</kbd> <kbd>s</kbd> <kbd>r</kbd> | Spectre: Search and reaplace                     |
| n    | <kbd>leader</kbd> <kbd>s</kbd> <kbd>h</kbd> | Search Help                                      |
| n    | <kbd>leader</kbd> <kbd>s</kbd> <kbd>k</kbd> | Search Keymaps                                   |
| n    | <kbd>leader</kbd> <kbd>q</kbd> <kbd>q</kbd> | Quit all                                         |

#### Windows

| Mode | Input                                       | Action                                  |
| :--- | :------------------------------------------ | :-------------------------------------- |
| n    | <kbd>leader</kbd> <kbd>-</kbd>              | Split window horizontal                 |
| n    | <kbd>leader</kbd> <kbd>\|</kbd>             | Split window vertical                   |
| n    | <kbd>leader</kbd> <kbd>w</kbd> <kbd>d</kbd> | Delete window: Close the current window |
| n    | <kbd>leader</kbd> <kbd>w</kbd> <kbd>w</kbd> | Other window                            |
| n    | <kbd>CONTROL</kbd> <kbd>h</kbd>             | Go to left window                       |
| n    | <kbd>CONTROL</kbd> <kbd>j</kbd>             | Go to lower window                      |
| n    | <kbd>CONTROL</kbd> <kbd>k</kbd>             | Go to upper window                      |
| n    | <kbd>CONTROL</kbd> <kbd>l</kbd>             | Go to right window                      |

#### Buffers

| Mode | Input                                       | Action                                  |
| :--- | :------------------------------------------ | :-------------------------------------- |
| n    | <kbd>SHIFT</kbd> <kbd>H</kbd>               | Previous buffer (left)                  |
| n    | <kbd>SHIFT</kbd> <kbd>L</kbd>               | Next buffer (right)                     |
| n    | <kbd>leader</kbd> <kbd>b</kbd> <kbd>d</kbd> | Delete buffer: Close the current buffer |

#### Movement

| Mode | Input                                         | Action                                                                |
| :--- | :-------------------------------------------- | :-------------------------------------------------------------------- |
| nv   | <kbd>h</kbd>                                  | Move left                                                             |
| nv   | <kbd>j</kbd>                                  | Move down                                                             |
| nv   | <kbd>k</kbd>                                  | Move up                                                               |
| nv   | <kbd>l</kbd>                                  | Move right                                                            |
| nv   | <kbd>b</kbd>                                  | Previous word                                                         |
| nv   | <kbd>w</kbd>                                  | Next word                                                             |
| nv   | <kbd>e</kbd>                                  | Next end of word                                                      |
| nv   | <kbd>0</kbd>                                  | First character in line                                               |
| nv   | <kbd>^</kbd>                                  | First non-blank character in line                                     |
| nv   | <kbd>$</kbd>                                  | End of line                                                           |
| nv   | <kbd>{</kbd>                                  | Previous empty line                                                   |
| nv   | <kbd>}</kbd>                                  | Next empty line                                                       |
| nv   | <kbd>%</kbd>                                  | Find next brace or bracket on the current line, and go to its match   |
| nv   | <kbd>g</kbd> <kbd>M</kbd>                     | Goto middle of line                                                   |
| nv   | <kbd>g</kbd> <kbd>g</kbd>                     | Goto first line, beginning of document                                |
| nv   | <kbd>G</kbd>                                  | Goto last line, end of document                                       |
| nv   | <kbd>[number]</kbd> <kbd>g</kbd> <kbd>g</kbd> | Goto line _number_ (also works with <kbd>[number]</kbd> <kbd>G</kbd>) |
| nv   | <kbd>[number]</kbd> <kbd>%</kbd>              | Goto line at _number_ percentage (as in `25%`, `50%`, or `100%`)      |
| n    | <kbd>g</kbd> <kbd>d</kbd>                     | Goto definition                                                       |
| n    | <kbd>g</kbd> <kbd>D</kbd>                     | Goto declaration                                                      |
| n    | <kbd>g</kbd> <kbd>I</kbd>                     | Goto implementation                                                   |
| n    | <kbd>g</kbd> <kbd>y</kbd>                     | Goto type definition                                                  |

#### Scrolling

| Mode | Input                                  | Action                                         |
| :--- | :------------------------------------- | :--------------------------------------------- |
| inv  | <kbd>SHIFT</kbd> <kbd>Up-Arrow</kbd>   | Move one screenful backword (page up)          |
| inv  | <kbd>SHIFT</kbd> <kbd>Down-Arrow</kbd> | Move one screenful forward (page down)         |
| nv   | <kbd>z</kbd> <kbd>t</kbd>              | Redraw current line at top of window           |
| nv   | <kbd>z</kbd> <kbd>z</kbd>              | Redraw current line at center of window        |
| nv   | <kbd>z</kbd> <kbd>b</kbd>              | Redraw current line at bottom of window        |
| nv   | <kbd>z</kbd> <kbd>H</kbd>              | Scroll screen half a screen width to the right |
| nv   | <kbd>z</kbd> <kbd>L</kbd>              | Scroll screen half a screen width to the left  |

#### Editing

| Mode | Input                                       | Action                                                           |
| :--- | :------------------------------------------ | :--------------------------------------------------------------- |
| n    | <kbd>i</kbd>                                | Insert text before the cursor                                    |
| n    | <kbd>SHIFT</kbd> <kbd>I</kbd>               | Insert text before first non-blank character                     |
| n    | <kbd>a</kbd>                                | Append text after the cursor                                     |
| n    | <kbd>SHIFT</kbd> <kbd>A</kbd>               | Append text at end of line                                       |
| n    | <kbd>o</kbd>                                | New line below the current line                                  |
| n    | <kbd>SHIFT</kbd> <kbd>O</kbd>               | New line above the current line                                  |
| n    | <kbd>x</kbd>                                | Delete character                                                 |
| n    | <kbd>d</kbd> <kbd>w</kbd>                   | Delete word                                                      |
| n    | <kbd>SHIFT</kbd> <kbd>D</kbd>               | Delete to end of line                                            |
| n    | <kbd>d</kbd> <kbd>d</kbd>                   | Delete current line                                              |
| n    | <kbd>r</kbd>                                | Replace character                                                |
| n    | <kbd>R</kbd>                                | Replace mode                                                     |
| n    | <kbd>u</kbd>                                | Undo                                                             |
| n    | <kbd>CONTROL</kbd> <kbd>r</kbd>             | Redo                                                             |
| inv  | <kbd>OPTION</kbd> <kbd>j</kbd>              | Move line down                                                   |
| inv  | <kbd>OPTION</kbd> <kbd>k</kbd>              | Move line up                                                     |
| nv   | <kbd>SHIFT</kbd> <kbd>J</kbd>               | Join lines (with next line, or highlighted lines)                |
| v    | <kbd>g</kbd> <kbd>c</kbd>                   | Comment (multiple lines with _number_ <kbd>g</kbd> <kbd>c</kbd>) |
| n    | <kbd>g</kbd> <kbd>c</kbd> <kbd>o</kbd>      | Comment below the current line                                   |
| n    | <kbd>g</kbd> <kbd>c</kbd> <kbd>O</kbd>      | Comment above the current line                                   |
| v    | <kbd>&gt;</kbd>                             | Indent                                                           |
| v    | <kbd>&lt;</kbd>                             | Outdent                                                          |
| nv   | <kbd>leader</kbd> <kbd>c</kbd> <kbd>f</kbd> | Format                                                           |
| nv   | <kbd>leader</kbd> <kbd>c</kbd> <kbd>a</kbd> | Code actions                                                     |
| nv   | <kbd>CONTROL</kbd> <kbd>n</kbd>             | Autocompletion select from dropdown                              |
| inxs | <kbd>CONTROL</kbd> <kbd>c</kbd>             | Exit insert mode                                                 |
| inxs | <kbd>CONTROL</kbd> <kbd>s</kbd>             | Save file                                                        |

#### Selecting

| Mode | Input                                               | Action                                                                       |
| :--- | :-------------------------------------------------- | :--------------------------------------------------------------------------- |
| v    | <kbd>v</kbd>                                        | Enter visual mode, followed by vim movement (examples: `v$`, `v^`, or `v8j`) |
| v    | <kbd>SHIFT</kbd> <kbd>V</kbd>                       | Select line                                                                  |
| v    | <kbd>g</kbd> <kbd>g</kbd> <kbd>V</kbd> <kbd>G</kbd> | Select all                                                                   |
| v    | <kbd>v</kbd> <kbd>i</kbd> <kbd>w</kbd>              | Inner word (select word)                                                     |
| v    | <kbd>v</kbd> <kbd>i</kbd> <kbd>b</kbd>              | Inner block (select block)                                                   |
| v    | <kbd>v</kbd> <kbd>i</kbd> <kbd>t</kbd>              | Inner tag bloack                                                             |
| v    | <kbd>v</kbd> <kbd>i</kbd> <kbd>"</kbd>              | Inner quotes (select everything inside of `"` quotes)                        |
| v    | <kbd>v</kbd> <kbd>i</kbd> <kbd>{</kbd>              | Inner braces (select everything inside of `{}` braces)                       |
| v    | <kbd>v</kbd> <kbd>i</kbd> <kbd>[</kbd>              | Inner brackets (select everything inside of `[]` brackets)                   |
| v    | <kbd>v</kbd> <kbd>a</kbd> <kbd>w</kbd>              | Outer word (select word)                                                     |
| v    | <kbd>v</kbd> <kbd>a</kbd> <kbd>b</kbd>              | Outer block (select block)                                                   |
| v    | <kbd>v</kbd> <kbd>a</kbd> <kbd>t</kbd>              | Outer tag bloack                                                             |
| v    | <kbd>v</kbd> <kbd>a</kbd> <kbd>"</kbd>              | Outer quotes (select everything including `"` quotes)                        |
| v    | <kbd>v</kbd> <kbd>a</kbd> <kbd>{</kbd>              | Outer braces (select everything including `{}` braces)                       |
| v    | <kbd>v</kbd> <kbd>a</kbd> <kbd>[</kbd>              | Outer brackets (select everything including `[]` brackets)                   |

#### Copying and moving text

| Mode | Input                                  | Action                                                                               |
| :--- | :------------------------------------- | :----------------------------------------------------------------------------------- |
| nv   | <kbd>y</kbd>                           | Yank into register (copy)                                                            |
| nv   | <kbd>y</kbd> <kbd>y</kbd>              | Yank current line into register (copy, also mapped as <kbd>SHIFT</kbd> <kbd>Y</kbd>) |
| nv   | <kbd>y</kbd> <kbd>$</kbd>              | Yank from cursor to end of line register (copy)                                      |
| nv   | <kbd>y</kbd> <kbd>^</kbd>              | Yank from cursor to first non-blank character of line (copy)                         |
| nv   | <kbd>d</kbd>                           | Delete (cut)                                                                         |
| nv   | <kbd>d</kbd> <kbd>d</kbd>              | Delete current line (cut)                                                            |
| nv   | <kbd>p</kbd>                           | Put register after cursor (paste)                                                    |
| nv   | <kbd>SHIFT</kbd> <kbd>P</kbd>          | Put register before cursor (paste)                                                   |
| nv   | <kbd>y</kbd> <kbd>i</kbd> <kbd>w</kbd> | Yank inner word (copy word)                                                          |
| nv   | <kbd>d</kbd> <kbd>i</kbd> <kbd>w</kbd> | Delete inner word (delete word)                                                      |

#### Searching

| Mode | Input                                       | Action                                                   |
| :--- | :------------------------------------------ | :------------------------------------------------------- |
| n    | <kbd>\*</kbd>                               | Search forward for the identifier under the cursor       |
| n    | <kbd>#</kbd>                                | Search backward for the identifier under the cursor      |
| n    | <kbd>/</kbd>                                | Search forward, repeat last search with <kbd>n</kbd>     |
| n    | <kbd>?</kbd>                                | Search backward, repeat last search with <kbd>N</kbd>    |
| n    | <kbd>leader</kbd> <kbd>SPACE</kbd>          | Find files from root directory                           |
| n    | <kbd>leader</kbd> <kbd>f</kbd> <kbd>F</kbd> | Find files from current working directory                |
| n    | <kbd>leader</kbd> <kbd>/</kbd>              | Live grep: search in all files                           |
| n    | <kbd>s</kbd>                                | Flash: search window, use labels to jump to any location |

#### Code Folding

| Mode | Input                     | Action                           |
| :--- | :------------------------ | :------------------------------- |
| n    | <kbd>z</kbd> <kbd>c</kbd> | Close one fold under the cursor  |
| n    | <kbd>z</kbd> <kbd>C</kbd> | Close all folds under the cursor |
| n    | <kbd>z</kbd> <kbd>m</kbd> | Fold more                        |
| n    | <kbd>z</kbd> <kbd>M</kbd> | Close all folds                  |
| n    | <kbd>z</kbd> <kbd>o</kbd> | Open one fold under the cursor   |
| n    | <kbd>z</kbd> <kbd>O</kbd> | Open all folds under the cursor  |
| n    | <kbd>z</kbd> <kbd>r</kbd> | Reduce folding                   |
| n    | <kbd>z</kbd> <kbd>R</kbd> | Open all folds                   |

#### File Explorer: Neo-tree

| Mode | Input                          | Action                                  |
| :--- | :----------------------------- | :-------------------------------------- |
| n    | <kbd>leader</kbd> <kbd>e</kbd> | Neo-tree: Open file system tree sidebar |
| n    | <kbd>RETURN</kbd>              | Open directory or file                  |
| n    | <kbd>a</kbd>                   | Add file                                |
| n    | <kbd>d</kbd>                   | Delete file                             |
| n    | <kbd>SHIFT</kbd> <kbd>P</kbd>  | Preview file                            |
| n    | <kbd>?</kbd>                   | Help                                    |

#### Errors

| Mode | Input                                       | Action                            |
| :--- | :------------------------------------------ | :-------------------------------- |
| n    | <kbd>leader</kbd> <kbd>x</kbd> <kbd>x</kbd> | Document diagnostics: error list  |
| n    | <kbd>leader</kbd> <kbd>x</kbd> <kbd>X</kbd> | Workspace diagnostics: error list |
| n    | <kbd>leader</kbd> <kbd>x</kbd> <kbd>q</kbd> | Quickfix list                     |

#### TODOs

| Mode | Input                                       | Action                            |
| :--- | :------------------------------------------ | :-------------------------------- |
| n    | <kbd>leader</kbd> <kbd>x</kbd> <kbd>t</kbd> | Todos: All todos in the workspace |

#### Git

| Mode | Input                                       | Action                   |
| :--- | :------------------------------------------ | :----------------------- |
| n    | <kbd>leader</kbd> <kbd>g</kbd> <kbd>g</kbd> | Git                      |
| n    | <kbd>leader</kbd> <kbd>g</kbd> <kbd>c</kbd> | Git commit history       |
| n    | <kbd>leader</kbd> <kbd>g</kbd> <kbd>B</ibd> | Open repo in the browser |

#### Information

| Mode | Input                                        | Action                                                      |
| :--- | :------------------------------------------- | :---------------------------------------------------------- |
| n    | <kbd>CTRL</kbd> <kbd>g</kbd>                 | Show current file name with path                            |
| n    | <kbd>g</kbd> <kbd>a</kbd>                    | Show ascii value of character under cursor                  |
| n    | <kbd>g</kbd> <kbd>8</kbd>                    | Show utf-8 encoding byte sequence of character under cursor |
| n    | <kbd>g</kbd> <kbd>CONTROL</kbd> <kbd>G</kbd> | Show cursor column, line, word, and byte position           |

#### Command line

| Input                           | Action                                         |
| :------------------------------ | :--------------------------------------------- |
| <kbd>CONTROL</kbd> <kbd>u</kbd> | Remove all characters (clear the command line) |
| <kbd>CONTROL</kbd> <kbd>w</kbd> | Delete word in front of the cursor             |
| <kbd>CONTROL</kbd> <kbd>k</kbd> | Enter digraph                                  |

## TMUX

Configuration for TMUX, terminal multiplexer.

### Keybindings

TMUX key mapping, based on macOS.

Prefix: <kbd>CONTROL</kbd> <kbd>b</kbd>

| Input                                                 | Action                                     |
| :---------------------------------------------------- | :----------------------------------------- |
| <kbd>Prefix</kbd> <kbd>c</kbd>                        | Create window                              |
| <kbd>Prefix</kbd> <kbd>n</kbd>                        | Next window                                |
| <kbd>Prefix</kbd> <kbd>p</kbd>                        | Previous window                            |
| <kbd>Prefix</kbd> <kbd>0</kbd>                        | Select window 0 (or enter window _number_) |
| <kbd>Prefix</kbd> <kbd>,</kbd>                        | Rename window                              |
| <kbd>Prefix</kbd> <kbd>w</kbd>                        | List windows                               |
| <kbd>Prefix</kbd> <kbd>%</kbd>                        | Split window vertically                    |
| <kbd>Prefix</kbd> <kbd>"</kbd>                        | Split window horizontally                  |
| <kbd>Prefix</kbd> <kbd>m</kbd>                        | Toggle window maximize                     |
| <kbd>Prefix</kbd> <kbd>z</kbd>                        | Toggle pane zoom                           |
| <kbd>Prefix</kbd> <kbd>Arrow</kbd>                    | Cycle window focus in direction            |
| <kbd>Prefix</kbd> <kbd>d</kbd>                        | Detach from session                        |
| <kbd>Prefix</kbd> <kbd>s</kbd>                        | List sessions                              |
| <kbd>Prefix</kbd> <kbd>q</kbd>                        | Show window numbers                        |
| <kbd>Prefix</kbd> <kbd>&</kbd>                        | Kill window                                |
| <kbd>Prefix</kbd> <kbd>x</kbd>                        | Kill pane                                  |
| <kbd>Prefix</kbd> <kbd>COMMAND</kbd> <kbd>Arrow</kbd> | Resize pane in direction                   |
| <kbd>Prefix</kbd> <kbd>I</kbd>                        | Install plugins                            |
