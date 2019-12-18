export EDITOR='nvim'
export TERM='xterm-kitty'
export PYTHONPATH='${PYTHONPATH}:/home/benjamin/.local/bin'
export ZSH='/home/benjamin/.oh-my-zsh'
export DEFAULT_USER='$USER'

VIRTUAL_ENV_DISABLE_PROMPT=1

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir dir_writable virtualenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_TIME_FORMAT="%D{%I:%M %P}"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_STATUS_OK=false
# 000 -> Grey
# 001 -> Red
# 002 -> Green
# 003 -> Yellow
# 004 -> Blue (Dark Blue)
# 005 -> Magenta (Pink)
# 006 -> Cyan (Light Blue)
# 007 -> White
# 008 -> Dark Grey
POWERLEVEL9K_VIRTUALENV_ICON='\ue235'
POWERLEVEL9K_VIRTUALENV_BACKGROUND="006"
POWERLEVEL9K_VIRTUALENV_FOREGROUND="000"
POWERLEVEL9K_ROOT_ICON='\uf303'
POWERLEVEL9K_SUDO_ICON='\uF09C'
POWERLEVEL9K_HOME_ICON='\uf015 '
POWERLEVEL9K_DIR_HOME_FOREGROUND="000"
POWERLEVEL9K_DIR_HOME_BACKGROUND="007"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="000"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="001"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="000"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="007"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="000"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="007"
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="007"
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="000"
POWERLEVEL9K_DIR_ETC_FOREGROUND='000'
POWERLEVEL9K_DIR_ETC_BACKGROUND='007'
POWERLEVEL9K_VCS_BRANCH_ICON=''
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="000"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="002"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="000"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="001"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="000"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="005"
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="001"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="000"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="004"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="000"
POWERLEVEL9K_TIME_BACKGROUND="007"
POWERLEVEL9K_TIME_FOREGROUND="000"
#POWERLEVEL9K_TIME_ICON=''
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='╭─'
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="└─\uf460 "

plugins=(cp sudo dircycle dirhistory zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'

alias vim='nvim'
alias grub-update='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias grub='sudo nvim /etc/default/grub'
alias journal='sudo journalctl -b -p 3'
alias prime='DRI_PRIME=1'
alias neofetch-bong='neofetch --ascii "$(fortune|cowthink -f bong -W 30)"'

alias grep='grep --color=auto'
alias pgrep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='ls -FA --color=auto'
alias ll='ls -alF'

alias kittyconf='vim ~/.config/kitty/kitty.conf'
alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/.zshrc'
alias polybarconf='vim ~/.config/polybar/config'
alias i3conf='vim ~/.config/i3/config'
alias pacman-backup='sudo pacman -Qe > ~/.backup/pacman_packages'

# run ls on cd 
function chpwd() {
    emulate -L zsh
    ls
}

