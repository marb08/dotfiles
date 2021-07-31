export TERM=xterm-256color
export ZSH="$(echo $HOME)/.oh-my-zsh"

ZSH_THEME="robbyrussell"
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	)

source $ZSH/oh-my-zsh.sh

#--------ALIASES-----------
alias ll="ls -lah"
alias vim="nvim"
alias l="ls -lah"
alias zshc="nvim ~/.zshrc"

export PATH="/home/marb/.local/share/gem/ruby/3.0.0/bin:$PATH"

# alias ohmyzsh="mate ~/.oh-my-zsh"
