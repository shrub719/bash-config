alias ll="ls -alFh"
alias la="ls -A"
alias l="ls -CF"

alias tree="tree -aCF -I target -I node_modules -I .git -I .idea"
alias gtree="git ls-files | tree -CF --fromfile"
alias rc='nvim ~/.bash_aliases && source ~/.bashrc'

alias dog="echo ' ^
/ o\`--,
  /--'"
alias bark="dog '    <'"

function p() {
    cd "$HOME/projects/$1"
}

