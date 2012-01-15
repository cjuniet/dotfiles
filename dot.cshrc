alias h		history 25
alias j		jobs -l
alias ls	ls -CFG
alias ll	ls -lA

umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin $HOME/local/bin)
set prompt = '%{\033[31;40m%}%m:%~%#%{\033[0m%} '

setenv	BLOCKSIZE	K
setenv	EDITOR		vim
setenv  LESS		-S
setenv	MONO_PATH	$HOME/local/dll
setenv	PAGER		less

if ($?prompt) then
	set autolist ambiguous
	set filec
	set history = 100
	set savehist = 100
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif
