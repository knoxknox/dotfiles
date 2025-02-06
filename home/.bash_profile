source "$HOME/.bash_prompt"
source "$HOME/.bash_aliases"
source "$HOME/.docker_aliases"

# Ignore case on auto-completion
bind "set completion-ignore-case on"

# Ignore warning about zsh migration
export BASH_SILENCE_DEPRECATION_WARNING=1

# Include brew sources to the profile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Include asdf sources to the profile
source "$HOME/.asdf/plugins/java/set-java-home.bash"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
