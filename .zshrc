# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:/usr/local/go/bin

# load powerlevel10k theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# aliases
alias es="exa --icons --color automatic --no-user --no-time  --group-directories-first --no-permissions"

function chpwd() {
    emulate -L zsh
    exa --icons --color automatic --no-user --no-time  --group-directories-first --no-permissions
}

# add python to path:
export PATH=$PATH:/home/bb0418/.local/bin

# add plugins.
plugins=(git z zsh-autosuggestions)

set bell-style none

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/bb0418/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/bb0418/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
