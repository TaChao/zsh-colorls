# exa for zsh.

# Only apply aliases if exa is installed
if hash exa 2>/dev/null
then
    alias lc='exa'                               # exa with no options
    alias l='exa -l --group-directories-first'                 # List
    alias ll='exa -la  --git --group-directories-first'  # List, show almost all files (excludes ./ and ../)
    alias la='exa -la --group-directories-first'               # List, show all files
    alias lt='exa -l -t modified --git'             # List, sort by modification time (newest first)
    alias lS='exa -l -s size --git'             # List, sort by size (largest first)
    alias lr='exa --tree'                      # Show tree heirarchy, capped at depth 5 just in case
    alias lx='exa -la -s extension --git'             # List, Sort by file type
else
    alias ls='printf "Please install exa to enable the zsh-exa plugin\n\n" && ls --color=tty'
fi
