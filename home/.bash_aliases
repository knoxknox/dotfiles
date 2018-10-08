alias pw="cd ~/code"
alias vu="vagrant up"
alias vs="vagrant ssh"
alias vd="vagrant halt"
alias vr="vagrant rsync-auto"
alias mc="mc -ac -S xoria256"
alias ca="git commit --amend"
alias cr="git push origin HEAD:refs/for/master"

ph() {
  echo -e '
    local:
      pw: $ cd ~/.
      vu: $ vagrant up
      vs: $ vagrant ssh
      vd: $ vagrant halt
      vr: $ vagrant rsync-auto
    review:
      cz: $ git reset HEAD~1
      ca: $ git commit --amend
      cr: $ git push origin HEAD:refs/for/master
    remote:
      ssh: $ ssh root@192.168.0.1
      branch: $ git branch -a | grep --color 'pattern'
      deploy: $ BRANCH="$1" bundle exec cap stage deploy
    synchronize:
      vagrant: $ scp -r -P 2222 vagrant@127.0.0.1:/remote/ ~/local
  '
}

vpn() {
  auth_path="configs/auth.ovpn"
  config_path="configs/config.ovpn"
  sudo openvpn --cd ~/.vpn-keys --config $config_path --auth-user-pass $auth_path
}
