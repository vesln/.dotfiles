# Load config
. "$HOME/.config/fish/init/aliases.fish"
. "$HOME/.config/fish/init/export.fish"

for file in $HOME/.projects/**/fish/*.fish
  . $file
end

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.fish ]; and . /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.fish
