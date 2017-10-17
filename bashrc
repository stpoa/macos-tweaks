# Path
export PATH=/usr/sbin:/sbin:/usr/local/bin:$PATH

# Theme
source ~/.bash-powerline.sh

# Relod tmux config
tmux source-file ~/.tmux.conf

# Aliases
alias c='clear'
alias q='exit'
alias l='ls'
alias v='vim'
alias t='tmux'

# Tweaks
shopt -s autocd

# Functions
function day {
  # Terminal theme
  defaults write com.apple.Terminal "Startup Window Settings" -string "Solarized Light"
  # Vim theme
  sed -i -e 's/set background=dark/set background=light/g' ~/.vimrc
  # Tmux theme
  cd; rm .tmux.conf; ln -s Github/macos-tweaks/tmuxday.conf .tmux.conf
  screen bash -c "killall Terminal; open -a Terminal.app"
}
function night {
  # Terminal theme
  defaults write com.apple.Terminal "Startup Window Settings" -string "Solarized Dark"
  # Vim theme
  sed -i -e 's/set background=light/set background=dark/g' ~/.vimrc
  # Tmux theme
  cd; rm .tmux.conf; ln -s Github/macos-tweaks/tmuxnight.conf .tmux.conf
  screen bash -c "killall Terminal; open -a Terminal.app"
}

