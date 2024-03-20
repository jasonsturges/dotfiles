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

#### Editing

| Mode | Input                                       | Action         |
| :--- | :------------------------------------------ | :------------- |
| inv  | <kbd>OPTION</kbd> <kbd>j</kbd>              | Move line down |
| inv  | <kbd>OPTION</kbd> <kbd>k</kbd>              | Move line up   |
| inxs | <kbd>CONTROL</kbd> <kbd>s</kbd>             | Save file      |
| v    | <kbd>&gt;</kbd>                             | Indent         |
| v    | <kbd>&lt;</kbd>                             | Outdent        |
| nv   | <kbd>leader</kbd> <kbd>c</kbd> <kbd>f</kbd> | Format         |

#### Errors

| Mode | Input                                       | Action                           |
| :--- | :------------------------------------------ | :------------------------------- |
| n    | <kbd>leader</kbd> <kbd>x</kbd> <kbd>x</kbd> | Document diagnostics: error list |
| n    | <kbd>leader</kbd> <kbd>x</kbd> <kbd>X</kbd> | Document diagnostics: error list |
| n    | <kbd>leader</kbd> <kbd>x</kbd> <kbd>q</kbd> | Quickfix list                    |

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
