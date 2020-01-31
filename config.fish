set -xg LC_ALL en_US.UTF-8
set -xg LANG ja_JP.UTF-8
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -x PATH $HOME/bin $PATH
set -xg EDITOR vim
set -xg JAVA_HOME "/Library/Java/JavaVirtualMachines/openjdk-13.0.1.jdk/Contents/Home"

# anyenv
set -x PATH $HOME/.anyenv/bin $PATH
set -x PATH $HOME/$RBENV_ROOT/shims $PATH
anyenv init - fish | source

# alias
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias python="/usr/local/bin/python3"
alias gitlog="git log --oneline --graph"

# https://dev.classmethod.jp/etc/fish-shell-life/
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository
end
