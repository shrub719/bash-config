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

export MARK_DIR="$HOME/projects/mark"

function mark() {
    if [ -z "$1" ]
    then
        mark .
    elif [ -d "$1" ]
    then
        for file in "$1"/*.md
        do
            mark-convert "$file"
        done
        mark-open "README.md"
    elif [[ "$1" == *.md ]]
    then
        mark-convert "$1"
        mark-open "$1"
    else
        echo "not a .md file or directory" 
    fi
}

function mark-convert() {
    local name=$(basename "$1")
    local out="$MARK_DIR/tmp/$name.html"
    pandoc "$1" -o "$out" -s -c "$MARK_DIR/style.css" --quiet
    sed -i "s/\.md/\.md.html/g" "$out"
}

function mark-open() {
    local name=$(basename "$1")
    xdg-open "$MARK_DIR/tmp/$name.html"
}

complete -f -d mark


