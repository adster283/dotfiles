#!/bin/zsh

# Download Spicetify
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh

# Add Spicetify to the the path
export PATH=$PATH:$HOME/.spicetify

# Download the Catpuccin theme
git clone https://github.com/catppuccin/spicetify.git

# Copy the theme to the Spicetify dir
cp -r spicetify/catppuccin ~/.config/spicetify/Themes/

# Apply the theme
spicetify config current_theme catppuccin
spicetify config color_scheme frappe
spicetify config inject_css 1 inject_theme_js 1 replace_colors 1 overwrite_assets 1
spicetify apply
