set -xg LC_ALL ja_JP.UTF-8
set -xg LANG ja_JP.UTF-8

set -x PATH $HOME/.anyenv/bin $PATH
set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_paths

# https://dev.classmethod.jp/etc/fish-shell-life/
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository
end
