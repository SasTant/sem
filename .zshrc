# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/qyla/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="blinks"
#ZSH_THEME="ys"
#ZSH_THEME='darkblood'
#ZSH_THEME='mortalscumbag'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
 HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rsync) 

source $ZSH/oh-my-zsh.sh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# rat way command
alias yset='sudo xed /home/qyla/.local/lib/python3.6/site-packages/ytsearch/settings.py'
alias yts='ytsearch search'
alias ytt='ytsearch'

alias uu='sudo apt update && sudo apt upgrade && sudo apt autoremove'
alias uc='sudo cli-aptiX'
alias qs='slock & xset dpms force off' 
alias ii='sudo mx-packageinstaller'
alias cc='clear'
alias xx='exit'
alias qq='sudo shutdown -h now'
alias qr='sudo shutdown -r now'

alias bz='vim ~/.zshrc'
alias zz='echo $?'

alias ldm='sudo geany /etc/lightdm/lightdm-gtk-greeter.conf'

alias cmp='compton --config ~/.compton.conf -c  --shadow-red 1  --shadow-exclude focused=0 -z -o 1 --sw-opti -r 15 -b'
alias cmk='kill $(pidof compton)'

#conky
alias kc='kill $(pidof conky)'
alias ck='conky -d'

alias lnk='links2 -g'
alias lng='links2 -g duckduckgo.com'

alias sfg='surf google.com &'
alias kk1='kill %1'
alias kk2='kill %2'
alias bb1='bg %1'
alias bb2='bg %2'

alias cem='free -hm'
alias cep='top -in 3'

#sort based on time modif
alias lss='ls -t'

alias lsaa='ls -a'
alias mpa='mpv --no-vid'

alias fyt='firefox youtube.com'
alias fgh='firefox https://github.com/SasTant/'
alias lgh='links2 -g https://github.com/SasTant'

#failed project
alias mps='cd ~/.mpyt && ./gabyut.sh'
alias hmp='cat ~/.mpyt/hist_mpyt.txt'
alias hpp='cd ~/.mpyt && ./plylgyut.sh'
alias mpc='sudo geany ~/.mpyt/gabyut.sh'

# git alias
#alias ggs='git status'
#alias ggl='git log'
#alias gga='git add'
#alias ggr='git remote -v'
#alias gps='git push -u'
#alias gpl='git pull'
#alias ggc='git checkout'
#alias gmit='git commit -m'
 
# ping
alias py='ping youtube.com'
alias p8='ping 8.8.8.8'
alias pg='ping google.com'

# script mount new device ke /mnt
alias um='sudo umount /mnt'
alias mu='pasang.sh'

# launch tor 
alias tb='torb.sh'
# zoom in/out using xrandr
alias zmj='xrandr --output LVDS-1 --scale 1x1'
alias zmh='xrandr --output LVDS-1 --scale 0.9x0.9'
alias zmk='xrandr --output LVDS-1 --scale 1.2x1.2'

#dwm
alias dwc='sudo make clean install'
alias cdwl='cd ~/dwm/dwm'
alias sdwm='pulseaudio --start; sleep 1 && nitrogen --restore'
alias csdw='while true; do [[ -n $(pidof bash) ]] || xsetroot -name --; sleep 15; done'
alias vsdw='vim ~/statusdwm.sh'
alias stdw='cd ~ && ./statusdwm.sh > /dev/null'
