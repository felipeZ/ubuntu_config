# Console
PS1="\n\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\n\[\033[35m\]\t\[\033[m\] $ "

alias c='clear'
alias ipy='ipython'
alias irgrep='grep -ir'
alias cling='cling -std=c++17'


# Path
PATH="$PATH:$HOME/Primer/cling_2018-05-29_ubuntu16/bin"

# Docker
alias dockerm='docker rm -v $(docker ps -aq -f status=exited)'
alias dockermc='docker rm $(docker ps -aq)'
alias dockermi='docker rmi $(docker images -q)'
alias dockermv='docker volume ls -qf dangling=true | xargs -r docker volume rm'
alias dangling='docker images -qf dangling=true | xargs docker rmi'
#load amber
# source /home/felipe/WorkbenchPython/amber16/amber.sh

# Encrypt Function
ENCR () {
     if [[ -z $1 ]];then
        echo "Use it with a filename"
     else
        openssl aes-128-cbc -salt -in $1 -out ${1}.aes
     fi
}


# Decrypt function
DECR () {
     if [[ -z $1 ]];then
        echo "Use it with a filename.aes"
     else
        openssl aes-128-cbc -d -salt -in $1 -out ${1%.aes}
     fi
}
