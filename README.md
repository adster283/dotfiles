Still very much a work in progress.

# The setup steps system setup:

First clone the repo
```
    git clone https://github.com/adster283/dotfiles.git
```

Copy the init directory from the repo to your home directory

Run the brew.sh script
```
    sudo ./brew.sh
```
Check that all packages are included in your path using:
```
brew list --formula | while read cask; do echo "Checking $cask"; brew --prefix $cask>/dev/null || echo "$cask not found"; done
```

Run the script to change some system settings
```
    sudo ./.macos
```

You will need to restart you computer for all those changes to take effect

Now open your system settings, open wallpapers settings and add the wallpaper directory as your album.

# Lets now do up our browser:

Install darkreader extension.

Enable new theme preview, before selecting catpuccin theme.

# Biggest thanks to the following repos:

For the wallpapers:
- [Gingeh/wallpapers](https://github.com/Gingeh/wallpapers)

For a starting point and inspiration:
- [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
