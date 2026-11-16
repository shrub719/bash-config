alias ls="ls --color=auto -F"
alias ll="ls -alh"
alias la="ls -A"
alias l="ls"

alias tree="tree -aCF -I target -I node_modules -I .git -I .idea -I .venv"
alias gtree="git ls-files | tree -CF --fromfile"

alias rc='nvim ~/.bash_aliases && source ~/.bashrc'
alias gp="git add . && git commit -am 'upd8' && git push"

alias dog="echo ' ^
/ o\`--,
  /--'"
alias bark="dog '    <'"

function p() {
    cd "$HOME/projects/$1"
}

