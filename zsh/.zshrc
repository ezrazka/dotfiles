export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(zsh-autosuggestions zsh-syntax-highlighting colored-man-pages)

source $ZSH/oh-my-zsh.sh

bindkey -v

# history per tmux session
mkdir -p ~/.zsh_histories

if [[ -n "$TMUX" ]]; then
  session_name=$(tmux display-message -p '#S')
  export HISTFILE="$HOME/.zsh_histories/${session_name}"
else
  export HISTFILE="$HOME/.zsh_histories/default"
fi

# autosuggestion completion with <Tab>
complete-or-accept-suggestion() {
  if [[ -n $POSTDISPLAY ]]; then
    zle autosuggest-accept
  else
    zle expand-or-complete
  fi
}
zle -N complete-or-accept-suggestion
bindkey '^I' complete-or-accept-suggestion

# skinny cursor in insert mode
function zle-keymap-select {
  [[ ${KEYMAP} == vicmd ]] && echo -ne '\e[1 q' || echo -ne '\e[5 q'
}
zle -N zle-keymap-select
echo -ne '\e[5 q'

export KEYTIMEOUT=1

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
