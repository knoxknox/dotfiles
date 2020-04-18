alias pw="cd ~/code"
alias vu="vagrant up"
alias vs="vagrant ssh"
alias vd="vagrant halt"
alias tl="tmux ls"
alias ta="tmux attach -t"
alias tc="tmux new-session -s"
alias td="tmux kill-session -t"
alias ca="git commit --amend"
alias cr="git push origin HEAD -f"
alias fd="fd -i --hidden --exclude '.git'"
alias rg="rg -i --hidden --glob '!**/.git/*'"

ph() {
  echo -e '
    local:
      $ git man
      $ fd --no-ignore <file> <path>
      $ rg --no-ignore <text> <path>
    remote:
      $ BRANCH="$1" bundle exec cap staging deploy
      $ scp -r -P 2222 vagrant@127.0.0.1:/remote/ ~/local
  '
}
