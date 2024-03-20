# dotfiles

Personal dotfiles of development environment

## Neovim

Vim-based text editor.

### Keybindings

Leader key: <kbd>Spacebar</kbd>

#### Lazy

| Mode | Input                                       | Action                                           |
| :--- | :------------------------------------------ | :----------------------------------------------- |
| n    | <kbd>leader</kbd> <kbd>q</kbd> <kbd>q</kbd> | Quit all                                         |
| n    | <kbd>leader</kbd> <kbd>l</kbd>              | Lazy                                             |
| n    | <kbd>leader</kbd> <kbd>c</kbd> <kbd>m</kbd> | Mason: Language servers, linters, and formatters |
| n    | <kbd>leader</kbd> <kbd>s</kbd> <kbd>h</kbd> | Search Help                                      |
| n    | <kbd>leader</kbd> <kbd>s</kbd> <kbd>k</kbd> | Search Keymaps                                   |

#### Windows

| Mode | Input                                       | Action                  |
| :--- | :------------------------------------------ | :---------------------- |
| n    | <kbd>leader</kbd> <kbd>-</kbd>              | Split window horizontal |
| n    | <kbd>leader</kbd> <kbd>\|</kbd>             | Split window vertical   |
| n    | <kbd>leader</kbd> <kbd>w</kbd> <kbd>d</kbd> | Delete window           |
| n    | <kbd>leader</kbd> <kbd>w</kbd> <kbd>w</kbd> | Other window            |
| n    | <kbd>CONTROL</kbd> <kbd>h</kbd>             | Go to left window       |
| n    | <kbd>CONTROL</kbd> <kbd>j</kbd>             | Go to lower window      |
| n    | <kbd>CONTROL</kbd> <kbd>k</kbd>             | Go to upper window      |
| n    | <kbd>CONTROL</kbd> <kbd>l</kbd>             | Go to right window      |

#### Buffers

| Mode | Input                                       | Action                 |
| :--- | :------------------------------------------ | :--------------------- |
| n    | <kbd>SHIFT</kbd> <kbd>H</kbd>               | Previous buffer (left) |
| n    | <kbd>SHIFT</kbd> <kbd>l</kbd>               | Next buffer (right)    |
| n    | <kbd>leader</kbd> <kbd>b</kbd> <kbd>d</kbd> | Close buffer           |

#### Editing

| Mode | Input                                       | Action         |
| :--- | :------------------------------------------ | :------------- |
| inv  | <kbd>OPTION</kbd> <kbd>j</kbd>              | Move line down |
| inv  | <kbd>OPTION</kbd> <kbd>k</kbd>              | Move line up   |
| inxs | <kbd>CONTROL</kbd> <kbd>s</kbd>             | Save file      |
| v    | <kbd>&gt;</kbd>                             | Indent         |
| v    | <kbd>&lt;</kbd>                             | Outdent        |
| nv   | <kbd>leader</kbd> <kbd>c</kbd> <kbd>f</kbd> | Format         |

### Errors

| Mode | Input                                       | Action        |
| :--- | :------------------------------------------ | :------------ |
| n    | <kbd>leader</kbd> <kbd>x</kbd> <kbd>q</kbd> | Quickfix list |

### Git

| Mode | Input                                       | Action |
| :--- | :------------------------------------------ | :----- |
| n    | <kbd>leader</kbd> <kbd>g</kbd> <kbd>g</kbd> | Git    |
