#Colors ----------------------------------------------------------
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1 
export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \W \$\[\033[00m\] "

_myos="$(uname)"

case $_myos in 
  Linux) 
    alias ls='ls --color=auto' # For linux, etc
    # ls colors, see: http://www.linux-sxs.org/housekeeping/lscolors.html
    export LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rb=90'  #LS_COLORS is not supported by the default ls command in OS-X
    ;;
  Darwin)
    alias ls='ls -G'  # OS-X SPECIFIC - the -G command in OS-X is for colors, in Linux it's no groups
    ;;
  *)
esac

# Bash alias
alias c='clear'

alias ll='ls -la' #long listing
alias l.='ls -d .*' #list hidden 

## cd hacks
alias cd..='cd ..'
alias ..='cd ..'
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias mkdir='mkdir -pv'

# vim boyz
alias vi='vim'
alias svim='sudo vim'
alias edit='vim'

## Network
alias ports='netstat -tulanp' #list TCP/UDP ports

## Ubuntu
alias apt-get='sudo apt-get'
alias update='sudo apt-get update && sudo apt-get upgrade'

## SysAdmin
alias meminfo='free -m -l -t' # memory info
alias psmem='ps auxf | sort -nr -k 4' # get top process eating memory
alias psmem10='ps auxf | sort -nr -k 4 | head 10'
alias pscpu='ps auxf | sort -nr -k 3' # get top process eating cpu
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias cpuinfo='lscpu' # cput info

alias wget='wget -c' # resume wget by default

# Short cut alias
alias ds='cd Dropbox/School\ 2015/Computational\ Phsyics\ III'
alias ssht='ssh -X phys21@titan.ersa.edu.au'
alias vpn='/opt/cisco/anyconnect/bin/vpn -s connect vpn.adelaide.edu.au'
alias vpnd='/opt/cisco/anyconnect/bin/vpn disconnect'

# Setup some colors to use later in interactive shell or scripts
export COLOR_NC='\033[0m' # No Color
export COLOR_WHITE='\033[1;37m'
export COLOR_BLACK='\033[0;30m'
export COLOR_BLUE='\033[0;34m'
export COLOR_LIGHT_BLUE='\033[1;34m'
export COLOR_GREEN='\033[0;32m'
export COLOR_LIGHT_GREEN='\033[1;32m'
export COLOR_CYAN='\033[0;36m'
export COLOR_LIGHT_CYAN='\033[1;36m'
export COLOR_RED='\033[0;31m'
export COLOR_LIGHT_RED='\033[1;31m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_LIGHT_PURPLE='\033[1;35m'
export COLOR_BROWN='\033[0;33m'
export COLOR_YELLOW='\033[1;33m'
export COLOR_GRAY='\033[1;30m'
export COLOR_LIGHT_GRAY='\033[0;37m'
alias colorslist="set | egrep 'COLOR_\w*'"  # lists all the colors

force_color_prompt=yes

##
# Your previous /Volumes/Media HD/Users/jden/.bash_profile file was backed up as /Volumes/Media HD/Users/jden/.bash_profile.macports-saved_2013-10-30_at_23:33:22
##

# MacPorts Installer addition on 2013-10-30_at_23:33:22: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Volumes/Media HD/Users/jden/.bash_profile file was backed up as /Volumes/Media HD/Users/jden/.bash_profile.macports-saved_2014-06-02_at_20:26:42
##

# MacPorts Installer addition on 2014-06-02_at_20:26:42: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
