
# System Management:
alias update='sudo apt update && sudo apt upgrade -y'
alias install='sudo apt install -y'
alias remove='sudo apt remove -y'
alias autoremove='sudo apt autoremove -y'
alias clean='sudo apt clean'

# System Resource Monitoring:
alias sys='htop'
alias uptime='uptime -p'
alias df='df -h'
alias du='du -sh'
alias mem='free -h'
alias cpu='top -n 1 | grep Cpu'
alias top='top -n 1'

# File Operations:
rm_interactive() {
    echo -n "Remove the following files: $*? [Y/n]: "
    read -r response
    response=${response,,}  # Convert to lowercase
    if [[ "$response" == "y" || "$response" == "" ]]; then
        /bin/rm "$@"
    else
        echo "Skipped all files."
    fi
}
alias rm=rm_interactive
alias rmdir='rmdir --ignore-fail-on-non-empty'

# Navigation:
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias docs='cd /sdcard/Documents'
alias dl='cd /sdcard/Downloads'
alias home='cd /sdcard'
alias ds='cd /sdcard/Android/ds'
alias termux='cd /data/data/com.termux/files/home'

# Networking:
alias netstat='netstat -tuln'
alias ipshow='ip a'
alias trace='traceroute'
alias iftop='sudo iftop'
alias pingcheck='ping -c 4'
alias publicip='curl ifconfig.me'

# Git Operations:
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'
alias gco='git checkout'
alias glog='git log --oneline --graph --decorate'
alias gclone='git clone'

# Search and File Management:
alias findf='find . -type f -name'
alias findd='find . -type d -name'
alias grep='grep --color=auto'
alias grepall='grep -r --color=auto'
alias backup='tar -czvf'
alias untar='tar -xzvf'
alias mkcd='mkdir -p $1 && cd $1'
alias tailf='tail -f'

# System Logs and Information:
alias sysinfo='top -n 1'
alias last='last -a'
alias dmesg='dmesg | less'

# Package Management (APT):
alias aptupdate='sudo apt update'
alias aptupgrade='sudo apt upgrade -y'
alias aptdist-upgrade='sudo apt dist-upgrade -y'

# Directory Listing
alias l='ls -lF --color=auto'
alias ls='ls -F --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -la --color=auto'
alias lt='ls -lt --color=auto'
alias lc='ls -lC --color=auto'
alias ld='ls -d */ --color=auto'
alias lr='ls -R --color=auto'
alias lh='ls -lh --color=auto'

# Basic:
alias cls='clear'
alias clear='/usr/bin/clear'
alias time='date +"%H:%M:%S"'
alias datetime='date +"%Y-%m-%d %H:%M:%S"'
alias pstree='pstree -p'
alias ps='ps aux'
alias jobs='jobs -l'

# Python and Jupyter:
alias py='python3'
alias pip='pip3'
alias notebook='conda activate tf && jupyter notebook /sdcard/Android/ds'
alias jlab='conda activate tf && jupyter-lab /sdcard/Android/ds'
alias tf='conda activate tf'
alias cact='conda activate'
alias cdeact='conda deactivate'

# Edit .zshrc or .bashrc (depending on shell)
alias zshrc='nano ~/.zshrc'
alias bashrc='nano ~/.bashrc'
