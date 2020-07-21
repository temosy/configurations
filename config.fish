set -xg LC_ALL en_US.UTF-8
set -xg LANG ja_JP.UTF-8
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -x PATH $HOME/bin $PATH
set -xg EDITOR vim
set -xg JAVA_HOME "/Library/Java/JavaVirtualMachines/jdk-13.0.2.jdk/Contents/Home"
set -x PATH $HOME/Library/Android/sdk/platform-tools $PATH

# aws-sam
set -x USER_BASE_PATH (python -m site --user-base) $USER_BASE_PATH
set -x PATH $USER_BASE_PATH $USER_BASE_PATH/bin $PATH

# direnv
direnv hook fish | source

# anyenv
set -x PATH $HOME/.anyenv/bin $PATH
set -x PATH $HOME/$RBENV_ROOT/shims $PATH
set -x PATH $GOPATH $PATH
set -x PATH $GOPATH/bin $PATH
anyenv init - | source

# alias
alias python="/usr/local/bin/python3"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias gitlog="git log --oneline --graph"
alias ya='youtube-dl -x --embed-thumbnail --audio-format mp3 --audio-quality 0 -o "~/Music/%(title)s.%(ext)s"'
alias yaf='youtube-dl -x --audio-format flac --audio-quality 0 -o "~/Music/%(title)s.%(ext)s"'

alias na='youtube-dl -u $NICO_VIDEO_USER -p $NICO_VIDEO_PASS -x --embed-thumbnail --audio-format mp3 --audio-quality 0 -o "~/Music/%(title)s.%(ext)s"'
alias naf='youtube-dl -u $NICO_VIDEO_USER -p $NICO_VIDEO_PASS -x --audio-format flac --audio-quality 0 -o "~/Music/%(title)s.%(ext)s"'

# https://dev.classmethod.jp/etc/fish-shell-life/
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] 'peco_select_ghq_repository'
end

