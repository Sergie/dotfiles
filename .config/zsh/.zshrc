# vi:foldmethod=marker
export PS1='[%n@%m]%/%# '

# History {{{
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# }}}

# Basic Aliases {{{
alias ls="ls -FG"
alias ll="ls -lhG"
alias zc="nvim $ZDOTDIR/.zshrc&&source $ZDOTDIR/.zshrc"
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# }}}

# Common Options {{{
setopt notify
unsetopt beep
bindkey -v

zstyle :compinstall filename '$ZDOTDIR/.zshrc'
autoload -Uz compinit
compinit
# }}}

# Modules {{{
if (( $+commands[fzf] )); then source $ZDOTDIR/fzf.zsh;fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# }}}

# Colors {{{
source $ZDOTDIR/base16/base16-oceanicnext.sh
# }}}
