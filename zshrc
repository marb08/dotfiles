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

# alias ohmyzsh="mate ~/.oh-my-zsh"
