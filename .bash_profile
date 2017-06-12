# -------------------------------------------------
#
# BASH CONFIG
#
#
# Table of Contents:
# 1. ENVIRONMENT
# 2. ALIASES
# 3. FUNCTIONS
# 4. SEARCHING
# 5. NETWORKING
# 6. PROCESS MANAGEMENT
# 7. WEB DEV
#
# --------------------------------------------------

# ---------------
# 1. ENVIRONMENT
# ---------------

# Change Prompt to show current dir name
export PS1="\W$ "

# Set PATH
export PATH=/usr/local/bin:$PATH

# ----------
# 2. ALIASES
# ----------

alias cp='cp -iv' 									# cp:		Safe copy
alias mv='mv -iv'									# mv:		Safe move
alias c='clear'										# c:		Clear terminal display
alias ch='history -c'								# ch:		Clear history

# ------------
# 3. FUNCTIONS
# ------------

mcd () { mkdir -p "$1" && cd "$1" ; }				# mcd:		Make dir and then cd into it
trash () { command mv "$@" ~/.Trash ; }				# trash:	Move listed files to MacOS trash
bak () { cp "$1" ./"$1.bak" ; }						# bak:		Makes backup copy of file
up () { 
	for ((i = 0; i < $1; i++)) ; do 
		cd ..
	done 
}													# up:		Goes up dir n times
# -------------
# 4. SEARCHING
# -------------
alias qfind="find . -name "							# qfind:	Quickly search for file

# -------------
# 5. NETWORKING
# -------------

alias myip='curl https://api.ipify.org'				# myip:		Public IP Address

# ---------------------
# 6. PROCESS MANAGEMENT
# ---------------------

checkps() { ps -ef | grep "$1"; }					# checkps:	Checks if process is running

# ----------
# 7. WEB DEV
# ----------

alias herr='tail /var/log/httpd/error_log'			# herr:		Tails HTTP error logs

