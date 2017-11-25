# Path
export PATH="/usr/sbin:/sbin:/usr/local/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Theme
source ~/.bash-powerline.sh

# Relod tmux config
tmux source-file ~/.tmux.conf

# Aliases
alias c='clear'
alias q='exit'
alias l='ls'
alias vim='nvim'
alias v='nvim'
alias t='tmux'
alias n='npm'
alias g='git'
alias 'g-s'='git status'

# Tweaks
shopt -s autocd

# Autocomplete
if [ -f $(brew --prefix)/etc/bash_completion  ]; then
  . $(brew --prefix)/etc/bash_completion
fi

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

