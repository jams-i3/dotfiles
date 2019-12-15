export EDITOR='nvim'
export TERM='rxvt-unicode-256color'
export PYTHONPATH='${PYTHONPATH}:/home/benjamin/.local/bin'
export ZSH='/home/benjamin/.oh-my-zsh'
export DEFAULT_USER='$USER'

ZSH_THEME='powerlevel9k/powerlevel9k'
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status  command_execution_time time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'
POWERLEVEL9K_DIR_PATH_HIGHLIGHT_BOLD=true
# 000 -> Grey
# 001 -> Red
# 002 -> Green
# 003 -> Yellow
# 004 -> Blue (Dark Blue)
# 005 -> Magenta (Pink)
# 006 -> Cyan (Light Blue)
# 007 -> White
POWERLEVEL9K_ROOT_ICON='\uf303 '
POWERLEVEL9K_SUDO_ICON=$'\uF09C '
POWERLEVEL9K_STATUS_ICON='\uf00c '
POWERLEVEL9K_DIR_HOME_FOREGROUND='007'
POWERLEVEL9K_DIR_HOME_BACKGROUND='000'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='007'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='000'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='007'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='000'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='000'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='002'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='000'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='001'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='000'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='005'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='004'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='000'
POWERLEVEL9K_TIME_BACKGROUND='000'
POWERLEVEL9K_TIME_FOREGROUND='007'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='╭'
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='╰\uF460 '

plugins=(gitfast cp sudo dircycle dirhistory zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'

alias vim='nvim'
alias grub-update='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias grub='sudo nvim /etc/default/grub'
alias journal='sudo journalctl -b -p 3'
alias prime='DRI_PRIME=1'
alias neofetch-bong='neofetch --ascii "$(fortune|cowthink -f bong -W 30)"'

alias grep='grep --color=auto'

alias ls='ls -FA --color=auto'
alias ll='ls -alF'

alias kittyconf='vim ~/.config/kitty/kitty.conf'
alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/.zshrc'
alias polybarconf='vim ~/.config/polybar/config'
alias i3conf='vim ~/.config/i3/config'
alias pacman-backup='sudo pacman -Qe > ~/.backup/pacman_packages'
