# My neovim cheatsheet

This is intended to be a ongoing reference for myself as I find more sophisticated workflows.
The rationale of this file is that I will get help and find the documented mapping
As an iterative approach when I find myself doing a lot of keypresses to do something. 

## Resources

[Vim Commands: A Beginner Guide with Examples](https://thevaluable.dev/vim-commands-beginner/)
### Finding files

`-` for opening parent directory
*n.b* once opened -- can create, delete files and directories in text editing more
`<leader>e` for opening file tree
`<leader>ff` for fuzzy search for files
`:e myfile.txt` for editing a file named `myfile.txt` in the current window


### editing text

`dd` remove line
`cw` change word
`hjkl` for navigating
`o` to `o`pen a line of text below cursor (and enter insert mode) 
`o` for below
`$` end of current line
`e` end of next word
`w` start of next word
`y` to yank text (copy)
`p` to paste
`x` to cut
`b` to go back a word
`c` to change combined with operators
`yy` to yank a whole line
`yykP` to yank a line and paste it up 
`yykp` to dupe a line
`v` for selecting a block, `V` to quick select a line
`{}` brackets for jumping by contiguous code blocks 
### Commands

`:w` to save
`:q` to quit (if saved)
`:q!` to quit without saving

### Open terminal
`Ctrl+\` with termtoggle to get an integrated shell

### Manipulate windows/tabs

`Ctrl-W` open help for windows
`C-w w` to switch windows
`C-w h` move to left window
`C-w l` move to right window
`C-w v` open vertical window (vertical split)
`C-w s` split horizontally
