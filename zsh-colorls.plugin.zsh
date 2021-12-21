# exa for zsh.

# Only apply aliases if exa is installed
if hash exa 2>/dev/null
then
    alias lc='exa --icons'                               # exa with no options
    alias l='exa -l --icons --group-directories-first'                 # List
    alias ll='exa -la  --git --icons --group-directories-first'  # List, show almost all files (excludes ./ and ../)
    alias la='exa -la --icons --group-directories-first'               # List, show all files
    alias lt='exa -l --icons -t  modified --git'             # List, sort by modification time (newest first)
    alias lS='exa -l --icons -s size --git'             # List, sort by size (largest first)
    alias lr='exa --tree --icons'                      # Show tree heirarchy, capped at depth 5 just in case
    alias lx='exa -la --icons -s extension --git'             # List, Sort by file type
else
    alias ls='printf "Please install exa to enable the zsh-exa plugin\n\n" && ls --color=tty'
fi
