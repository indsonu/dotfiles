# Lines configured by zsh-newuser-install 
# History of commands will be stored in .histfile otherwise it will be stored in .zsh_history file 
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
# End of lines configured by zsh-newuser-install


# prompt
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"


# zplug
source ~/.zplug/init.zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load

# end zplug


# to use this install fzf from github https://github.com/junegunn/fzf?tab=readme-ov-file#using-git
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Preview file content using bat (https://github.com/sharkdp/bat)
export FZF_CTRL_T_OPTS="
--preview 'bat -n --color=always {}'
--bind 'ctrl-/:change-preview-window(down|hidden|)'"

export FZF_CTRL_R_OPTS="
--preview 'echo {}' --preview-window up:3:hidden:wrap
--bind 'ctrl-/:toggle-preview'
--bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
--color header:italic
--header 'Press CTRL-Y to copy command into clipboard'"

# use menu select for all completions
zstyle ':completion:*' menu select
zmodload zsh/complist


# use the vi navigation keys in menu completion
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history


# fpath is an array that tells Zsh where to look for function definitions, including custom completions.
fpath+=~/.zfunc

export MANPAGER="sh -c 'col -bx | bat -l man -p --theme Monokai\ Extended\ Bright'"
MANROFFOPT="-c"
export FZF_DEFAULT_COMMAND="fd"
export LC_CTYPE=en_US.UTF-8

# confluent kafka 
export CONFLUENT_HOME=/Users/sosharma/confluent-7.5.2
export PATH=$PATH:$CONFLUENT_HOME/bin


export PATH="$PATH:/Users/sosharma/kafka_2.13-3.4.0/bin"
export PATH="$PATH:/Users/sosharma/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:/Users/sosharma/.cargo/bin"

export PATH=/opt/homebrew/bin:$PATH


source /Users/sosharma/.docker/init-zsh.sh || true # Added by Docker Desktop

alias sz="source ~/.zshrc"
alias ls="exa -T"
alias ll="exa -1"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
