Vim-Lang-Exts
=============

Vim support for various languages.

Vim-Lang-Exts currently supports:
- x86 Assembly
- Ruby
- Scheme

Instructions
========

Linux Users who have Pathogen
--------

1. Download this repo.
2. Using Pathogen, transfer the contents of directory `linux/` to `~/.vim/`.
3. You're done!

Linux Users who do not have Pathogen
--------

1. Download this repo.
2. Transfer the contents of the folder `linux/docs/` to `~/.vim/docs/`.
3. Transfer `linux/ftdetect/ftdetect.vim` to `~/.vim/ftdetect/`.
4. Transfer the contents of the folder `linux/ftplugin/` to `~/.vim/ftplugin/`.
5. You're ready!

Vim for Windows Users
--------

1. Download this repo.
2. Transfer the contents of the folder `windows/` to `C:\Program Files\Git\share\vim\vim73\syntax\`.
3. That's it!

Known Glitches
========

x86 Assembly
--------

- Highlights keywords within comments

Ruby
--------

- Highlights capitals within indentifiers

Scheme
--------

- Does not highlight numbers
