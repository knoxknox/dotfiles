alias pw="cd ~/code"
alias vu="vagrant up"
alias vs="vagrant ssh"
alias vd="vagrant halt"
alias vr="vagrant rsync-auto"
alias tl="tmux ls"
alias ta="tmux attach -t"
alias tc="tmux new-session -s"
alias td="tmux kill-session -t"
alias mc="mc -ac -S xoria256"
alias ca="git commit --amend"
alias pr="git push origin HEAD -f"
alias cr="git push origin HEAD:refs/for/master"

ph() {
  echo -e '
    local:
      $ git man
      $ fd <file> <path>
      $ rg -i <text> <path>
    remote:
      $ BRANCH="$1" bundle exec cap stage deploy
      $ scp -r -P 2222 vagrant@127.0.0.1:/remote/ ~/local
  '
}
