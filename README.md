# dotfiles

Personal dotfiles of development environment

## Neovim

Configuration for Neovim, Vim-based text editor.

### Keybindings

Leader key: <kbd>Spacebar</kbd>

#### Lazy

| Mode | Input                                       | Action                                           |
| :--- | :------------------------------------------ | :----------------------------------------------- |
| n    | <kbd>leader</kbd> <kbd>q</kbd> <kbd>q</kbd> | Quit all                                         |
| n    | <kbd>leader</kbd> <kbd>l</kbd>              | Lazy                                             |
| n    | <kbd>leader</kbd> <kbd>c</kbd> <kbd>m</kbd> | Mason: Language servers, linters, and formatters |
| n    | <kbd>leader</kbd> <kbd>e</kbd>              | Neo-tree: File system tree sidebar               |
| n    | <kbd>leader</kbd> <kbd>s</kbd> <kbd>h</kbd> | Search Help                                      |
| n    | <kbd>leader</kbd> <kbd>s</kbd> <kbd>k</kbd> | Search Keymaps                                   |

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

| Mode | Input                             | Action                                                                |
| :--- | :-------------------------------- | :-------------------------------------------------------------------- |
| nv   | <kbd>h</kbd>                      | Move left                                                             |
| nv   | <kbd>j</kbd>                      | Move down                                                             |
| nv   | <kbd>k</kbd>                      | Move up                                                               |
| nv   | <kbd>l</kbd>                      | Move right                                                            |
| nv   | <kbd>b</kbd>                      | Previous word                                                         |
| nv   | <kbd>w</kbd>                      | Next word                                                             |
| nv   | <kbd>e</kbd>                      | Next end of word                                                      |
| nv   | <kbd>0</kbd>                      | First character in line                                               |
| nv   | <kbd>^</kbd>                      | First non-blank character in line                                     |
| nv   | <kbd>$</kbd>                      | End of line                                                           |
| nv   | <kbd>g</kbd> <kbd>M</kbd>         | Goto middle of line                                                   |
| nv   | <kbd>g</kbd> <kbd>g</kbd>         | Goto first line, beginning of document                                |
| nv   | <kbd>G</kbd>                      | Goto last line, end of document                                       |
| nv   | <kbd>[number]</kbd> <kbd>gg</kbd> | Goto line _number_ (also works with <kbd>[number]</kbd> <kbd>G</kbd>) |
| nv   | <kbd>[number]</kbd> <kbd>%</kbd>  | Goto line at _number_ percentage (as in `25%`, `50%`, or `100%`)      |
| nv   | <kbd>{</kbd>                      | Previous empty line                                                   |
| nv   | <kbd>}</kbd>                      | Next empty line                                                       |

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

| Mode | Input                                       | Action         |
| :--- | :------------------------------------------ | :------------- |
| inv  | <kbd>OPTION</kbd> <kbd>j</kbd>              | Move line down |
| inv  | <kbd>OPTION</kbd> <kbd>k</kbd>              | Move line up   |
| inxs | <kbd>CONTROL</kbd> <kbd>s</kbd>             | Save file      |
| v    | <kbd>&gt;</kbd>                             | Indent         |
| v    | <kbd>&lt;</kbd>                             | Outdent        |
| nv   | <kbd>leader</kbd> <kbd>c</kbd> <kbd>f</kbd> | Format         |

#### Selecting

| Mode | Input | Action |
| :-- | :-- | :-- |
| v | <kbd>v</kbd> | Enter visual mode, followed by vim movement (examples: `v$`, `v^`, or `v8j`) |
| v | <kbd>SHIFT</kbd> <kbd>V</kbd> | Select line |
| v | <kbd>g</kbd> <kbd>g</kbd> <kbd>V</kbd> <kbd>G</kbd> | Select all |
| v | <kbd>v</kbd> <kbd>i</kbd> <kbd>w</kbd> | Visual inner word (select word) |
| v | <kbd>v</kbd> <kbd>i</kbd> <kbd>"</kbd> | Visual inner quotes (select everything inside of `"` quotes) |
| v | <kbd>v</kbd> <kbd>i</kbd> <kbd>{</kbd> | Visual inner braces (select everything inside of `{}` braces) |
| v | <kbd>v</kbd> <kbd>i</kbd> <kbd>[</kbd> | Visual inner brackets (select everything inside of `[]` brackets) |
| v | <kbd>v</kbd> <kbd>a</kbd> <kbd>"</kbd> | Visual outer quotes (select everything including `"` quotes) |
| v | <kbd>v</kbd> <kbd>a</kbd> <kbd>{</kbd> | Visual outer braces (select everything including `{}` braces) |
| v | <kbd>v</kbd> <kbd>a</kbd> <kbd>[</kbd> | Visual outer brackets (select everything including `[]` brackets) |
| nv | <kbd>y</kbd> <kbd>i</kbd> <kbd>w</kbd> | Yank inner word (copy word) |
| nv | <kbd>d</kbd> <kbd>i</kbd> <kbd>w</kbd> | Delete inner word (delete word) |

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

| Mode | Input                                       | Action |
| :--- | :------------------------------------------ | :----- |
| n    | <kbd>leader</kbd> <kbd>g</kbd> <kbd>g</kbd> | Git    |

#### File Explorer: Neo-tree

| Mode | Input                          | Action                                  |
| :--- | :----------------------------- | :-------------------------------------- |
| n    | <kbd>leader</kbd> <kbd>e</kbd> | Neo-tree: Open file system tree sidebar |
| n    | <kbd>RETURN</kbd>              | Open directory or file                  |
| n    | <kbd>a</kbd>                   | Add file                                |
| n    | <kbd>d</kbd>                   | Delete file                             |
| n    | <kbd>SHIFT</kbd> <kbd>P</kbd>  | Preview file                            |
| n    | <kbd>?</kbd>                   | Help                                    |

#### Searching: Telescope

| Mode | Input                                       | Action                                    |
| :--- | :------------------------------------------ | :---------------------------------------- |
| n    | <kbd>leader</kbd> <kbd>SPACE</kbd>          | Find files from root directory            |
| n    | <kbd>leader</kbd> <kbd>f</kbd> <kbd>F</kbd> | Find files from current working directory |
| n    | <kbd>leader</kbd> <kbd>/</kbd>              | Live grep: search in all files            |
