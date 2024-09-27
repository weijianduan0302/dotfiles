# Note: added by p10k
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# -----------------------------------------------------------
echo "Hello from .zshrc dotfiles!"

export PATH=$HOME/bin:/usr/local/bin:$PATH

alias vim=nvim
alias vi=nvim

source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme # added when setting up alacritty

# about how zsh save history
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# when type 'source', up/down gives 'source xxx'
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# ohmyzsh aliases
alias l="ls -alFh"

# -----------------------------------------------------------

# Note: added by p10k
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Note: added when install zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# Note: added when install zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Note: added when config Zoxide (better cd)
eval "$(zoxide init zsh)"
alias cd="z"
. "/Users/weijianduan/.deno/env"