# For luis VM
alias luisVM='gcloud compute --project "friendly-chat-156817" ssh --zone "us-central1-c" "searchup-1"'
alias luisLog='gcloud compute instances tail-serial-port-output searchup-1 --zone=us-central1-c'

changeDir() {
  cd "$1" || return;
  ls;
}
alias cdl=changeDir
alias rm='rm -i'
alias sag='eval "$(ssh-agent -s)"'
alias sad='ssh-add ~/.ssh/id_rsa'
alias sgt='ssh -T git@github.com'
alias xcp='xclip -sel clip < '
alias sba='subl -add --new-window . &'
alias p2s='python -m SimpleHTTPServer '
alias xmod='xmodmap ~/.Xmodmap'

alias vi='nvim'
alias vim='nvim'
alias fd='fdfind'

_peco_change_directory() {
    echo $argv
    if [ "$#" -ne 0 ]; then
        peco --layout=bottom-up --query "$argv "|perl -pe 's/([ ()])/\\\\$1/g'|read foo
    else
        peco --layout=bottom-up |perl -pe 's/([ ()])/\\\\$1/g'|read foo
    fi
    echo $foo
    if [ $foo ]; then
        cd $foo
    else
        echo 'Not found!'
    fi
}

peco_change_directory() {
    echo $argv
    ls -ad */|perl -pe "s#^#$PWD/#"|grep -v \.git | sed -e 's/\/$//' | awk '!a[$0]++' | _peco_change_directory
}

peco_select_history() {
    echo $argv
    if [ "$#" -e 0 ]; then
        set peco_flags --layout=bottom-up
    else
        set peco_flags --layout=bottom-up --query "$argv"
    fi

    history|peco $peco_flags|read foo

    echo $foo
    if [ "$foo" -ne "" ]; then
        $foo
    else
        echo 'Not found!'
    fi
}

# alias pd=peco_change_directory
# alias ph=peco_select_history

alias e="exa"
alias eh="exa -l -h"
alias ei="exa -l -h -g --icons"

# Have less display colours
# from: https://wiki.archlinux.org/index.php/Color_output_in_console#man
export LESS_TERMCAP_mb=$'\e[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\e[1;33m'     # begin blink
export LESS_TERMCAP_so=$'\e[01;44;37m' # begin reverse video
export LESS_TERMCAP_us=$'\e[01;37m'    # begin underline
export LESS_TERMCAP_me=$'\e[0m'        # reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'        # reset reverse video
export LESS_TERMCAP_ue=$'\e[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal

export MANPAGER='less -s -M +Gg'
