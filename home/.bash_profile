source "$HOME/.bash_prompt"
source "$HOME/.bash_aliases"
source "$HOME/.docker_aliases"

# Ignore case on auto-completion
bind "set completion-ignore-case on"

# Include asdf sources to the profile
source /usr/local/opt/asdf/libexec/asdf.sh
source "$HOME/.asdf/plugins/java/set-java-home.bash"
