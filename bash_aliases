
# System Management:
alias update='sudo apt update && sudo apt upgrade -y'         # Update and upgrade all packages
alias install='sudo apt install -y'                           # Install packages
alias remove='sudo apt remove -y'                             # Remove packages
alias autoremove='sudo apt autoremove -y'                     # Remove unused packages
alias clean='sudo apt clean'                                  # Clean up cached packages

# System Resource Monitoring:
alias sys='htop'                                              # Interactive system monitor (requires htop)
alias uptime='uptime -p'                                      # Show system uptime in a human-readable format
alias diskusage='df -h'                                       # Show disk usage in human-readable format
alias du='du -sh'                                             # Show disk usage of a directory (human-readable)
alias mem='free -h'                                           # Show memory usage in human-readable format
alias cpu='top -n 1 | grep Cpu'                               # Show CPU usage (one snapshot)
alias top='top -n 1'                                          # Show system process info (one snapshot)

# File Operations:
alias rmf='rm -rf'                                            # Force remove files and directories
alias rm='rm -i'                                              # Interactive remove (prompt before deleting)
alias rmdir='rmdir --ignore-fail-on-non-empty'                # Remove empty directories
alias cp='cp -i'                                              # Interactive copy (confirm before overwriting)
alias mv='mv -i'                                              # Interactive move (confirm before overwriting)

# Navigation:
alias ..='cd ..'                                              # Go up one directory
alias ...='cd ../..'                                          # Go up two directories
alias ....='cd ../../..'                                      # Go up three directories
alias .....='cd ../../../..'                                  # Go up four directories
alias ......='cd ../../../../..'                              # Go up five directories
alias .......='cd ../../../../../..'                          # Go up six directories
alias docs='cd /sdcard/Documents'                             # Go to Documents directory
alias downloads='cd /sdcard/Downloads'                        # Go to Downloads directory
alias home='cd /sdcard'                                       # Go to the storsge directory

# Networking:
alias netstat='netstat -tuln'                                 # Show active network connections and listening ports
alias ipshow='ip a'                                           # Show IP address information
alias trace='traceroute'                                      # Trace the route packets take to a network host
alias iftop='sudo iftop'                                      # Monitor network usage per interface (install iftop)
alias pingcheck='ping -c 4'                                   # Ping a host with 4 packets
alias publicip='curl ifconfig.me'                             # Show public IP address

# Git Operations:
alias gs='git status'                                         # Show git status
alias ga='git add .'                                          # Add all changes to staging
alias gc='git commit -m'                                      # Commit changes with a message
alias gp='git push'                                           # Push changes to remote repository
alias gl='git pull'                                           # Pull the latest changes from remote
alias gco='git checkout'                                      # Switch branches or checkout files
alias glog='git log --oneline --graph --decorate'             # Show a simplified git log graph
alias gclone='git clone'                                      # Clone repos

# Search and File Management:
alias findf='find . -type f -name'                            # Search for files by name
alias findd='find . -type d -name'                            # Search for directories by name
alias grep='grep --color=auto'                                # Highlight search results in color
alias grepall='grep -r --color=auto'                          # Recursive search in all files
alias backup='tar -czvf'                                      # Backup files to a compressed tarball
alias untar='tar -xzvf'                                       # Extract a tarball
alias mkcd='mkdir -p $1 && cd $1'                             # Create a directory and navigate into it
alias cat='cat | less'                                        # View large files with paging
alias tailf='tail -f'                                         # Follow a file in real time (useful for logs)

# System Logs and Information:
alias sysinfo='top -n 1'                                      # Show one snapshot of system info
alias last='last -a'                                          # Show last login details, including IP addresses
alias dmesg='dmesg | less'                                    # View kernel ring buffer logs

# Package Management (APT):
alias aptupdate='sudo apt update'                             # Update package lists
alias aptupgrade='sudo apt upgrade -y'                        # Upgrade installed packages
alias aptdist-upgrade='sudo apt dist-upgrade -y'              # Upgrade packages to their latest versions

# Python and Jupyter:
alias py='python3'                                            # Run Python 3
alias notebook='conda activate tf && jupyter notebook'        # Launch Jupyter notebook
alias jlab='conda activate tf && jupyter-lab'                 # Launch Jupyter Lab
alias tf='conda activate tf'

# Directory Listing
alias l='ls -lF --color=auto'                                 # Long listing with file type indicators and color
alias ls='ls -F --color=auto'                                 # Basic listing with color and file type indicators
alias ll='ls -lh --color=auto'                                # Long listing with human-readable sizes and color
alias la='ls -la --color=auto'                                # Long listing of all files (including hidden) with color
alias lt='ls -lt --color=auto'                                # Long listing sorted by modification time
alias lc='ls -lC --color=auto'                                # Column-based listing with color
alias ld='ls -d */ --color=auto'                              # List only directories with color
alias lr='ls -R --color=auto'                                 # Recursively list directories with color
alias lh='ls -lh --color=auto'                                # Long listing with human-readable sizes and color

# Others:
alias cls='clear'                                             # Clear the terminal
alias time='date +"%H:%M:%S"'                                 # Show current time in HH:MM:SS format
alias datetime='date +"%Y-%m-%d %H:%M:%S"'                    # Show current date and time
alias pstree='pstree -p'                                      # Show a tree of running processes with process IDs
alias ps='ps aux'                                             # Show all running processes
alias jobs='jobs -l'                                          # List current jobs

# Edit .zshrc or .bashrc (depending on shell)
alias zshrc='nano ~/.zshrc'
alias bashrc='nano ~/.bashrc'
