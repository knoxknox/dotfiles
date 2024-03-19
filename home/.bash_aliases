alias pw="cd ~/code"
alias vu="vagrant up"
alias vs="vagrant ssh"
alias vd="vagrant halt"
alias tl="tmux ls"
alias ta="tmux attach -t"
alias tc="tmux new-session -s"
alias td="tmux kill-session -t"
alias fd="fd -i --hidden --no-ignore-vcs"
alias rg="rg -i --hidden --no-ignore-vcs"
alias ca="git commit --amend"
alias cr="git push origin HEAD --force-with-lease"

ph() {
  echo -e '
    local:
      $ git man
      $ fd <file> <path>
      $ rg <text> <path>
      $ watchexec -c -q <command>
    editor:
      $ fd -t file <pattern> -x subl
      $ rg -l <pattern> | xargs subl
    remote:
      $ BRANCH="$1" bundle exec cap staging deploy
      $ scp -r -P 2222 vagrant@127.0.0.1:/remote/ ~/local
  '
}
