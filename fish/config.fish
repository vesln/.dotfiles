# Load config
. "$HOME/.config/fish/init/aliases.fish"
. "$HOME/.config/fish/init/export.fish"

# Hook for desk activation
test -n "$DESK_ENV"; and . "$DESK_ENV"; or true
