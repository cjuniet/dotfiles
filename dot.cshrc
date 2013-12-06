#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
# more examples available at /usr/share/examples/csh/
#

alias c++11	c++ -std=c++11 -stdlib=libc++
alias grep	grep --color
alias ls	ls -CFG
alias ll	ls -lA

# A righteous umask
umask 22

set path = ($HOME/local/bin /sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin)

setenv	BLOCKSIZE	K
setenv	EDITOR		vi
setenv	LANG		en_US.UTF-8
setenv	LD_LIBRARY_PATH	$HOME/local/lib
setenv	LESS		'-FRSX'
setenv	PAGER		less
setenv	SHELL		/bin/tcsh
setenv	VISUAL		vim

if ($?prompt) then
	# An interactive shell -- set some stuff up
	if ($uid == 0) then
		set user = root
	endif

	#set prompt = '%{\033[31m%}%m:%~%#%{\033[0m%} '
        alias precmd 'set prompt="`gitprompt "%m:%~" "%#"` "'

	complete cd 'p/1/d/'

	set filec
	set history = 1000
	set savehist = (1000 merge)
	set autolist = ambiguous
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif
