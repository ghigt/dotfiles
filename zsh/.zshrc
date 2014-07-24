# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Z
source "$HOME/.dotfiles/z/z.sh"

# Global aliases
alias ctags="`brew --prefix`/bin/ctags"
alias -g gits='git status'
alias -g migrate='rake db:migrate db:test:prepare'
alias -g be='bundle exec'
alias -g github='git hub'
alias -g tag='ctags -R .'
alias -g mux='tmuxinator'
alias -g tks='tmux kill-session'
alias -g rmswp='find . -name ".*.sw*" | xargs rm -f'
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias -g nw="${HOME}/Applications/node-webkit.app/Contents/MacOS/node-webkit"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git golang brew heroku node)

source $ZSH/oh-my-zsh.sh
# Disable auto correct
unsetopt correct_all

export GOPATH=$HOME/Projects/golang
export GOCODE=$GOPATH/src/github.com/ghigt

export TEXBIN="/usr/texbin"
export CABALPATH=$HOME/.cabal
export PATH="${GOPATH}/bin:/usr/local/opt/go/libexec/bin:${CABALPATH}/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:${TEXBIN}"

export EDITOR='vim'
export DISABLE_AUTO_TITLE=true

# Rbenv completion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Pomodoro baby
pom() { pompom -e "$*" && pompom -d 5 "Break Time" }
