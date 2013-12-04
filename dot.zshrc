# PATHS #
SCALA_HOME="$HOME/local/scala"
PATH="$HOME/local/bin:$SCALA_HOME/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin"
LD_LIBRARY_PATH="$HOME/local/lib"

# ENVIRONMENT VARIABLES #
umask 022
BLOCKSIZE=K
EDITOR=vi
LANG=en_US.UTF-8
LESS='-FRSX'
PAGER=less
VISUAL=vim

# ALIASES #
alias c++11='c++ -std=c++11 -stdlib=libc++'
alias grep='grep --color'
alias ls='ls -CFG'
alias ll='ls -lA'

# PROMPT #
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' formats ' %F{3}[%F{2}%b%F{3}%u%c]%f'
zstyle ':vcs_info:*' actionformats ' %F{3}[%F{2}%b%F{3}|%F{4}%a%F{3}%u%c]%f'
setopt prompt_subst
precmd () { vcs_info }
PS1='%F{1}%m:%~%f${vcs_info_msg_0_}%F{1}>%f '


# ZSH OPTIONS #
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
WORDCHARS=_-.
bindkey -e
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "\e[A" history-beginning-search-backward-end
bindkey "\e[B" history-beginning-search-forward-end
bindkey "\e[7~" beginning-of-line
bindkey "\e[8~" end-of-line
zstyle :compinstall filename '/home/chris/.zshrc'
autoload -Uz compinit
compinit
