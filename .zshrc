# set hostname
[ -z "$HOSTNAME" ] && HOSTNAME=`hostname -s`
export HOSTNAME=${HOSTNAME%%.*}

[ -e ~/.zsh/config.zsh        ] && . ~/.zsh/config.zsh
[ -e ~/.zsh/path.zsh          ] && . ~/.zsh/path.zsh
#. ~/.zsh/server.zsh
[ -e ~/.zsh/prompt.zsh        ] && . ~/.zsh/prompt.zsh
[ -e ~/.zsh/abbreviations.zsh ] && . ~/.zsh/abbreviations.zsh
[ -e ~/.zsh/hash.zsh          ] && . ~/.zsh/hash.zsh
[ -e ~/.zsh/screen.zsh        ] && . ~/.zsh/screen.zsh
[ -e ~/.zsh/aliases.zsh       ] && . ~/.zsh/aliases.zsh
[ -e ~/.zsh/aliassufix.zsh    ] && . ~/.zsh/aliassufix.zsh
[ -e ~/.zsh/globalaliases.zsh ] && . ~/.zsh/globalaliases.zsh
[ -e ~/.zsh/completion.zsh    ] && . ~/.zsh/completion.zsh

# perl
[ -e ~/perl5/perlbrew/etc/bashrc ] && . ~/perl5/perlbrew/etc/bashrc

# customize
[ -e ~/.zsh/machine.zsh ] && . ~/.zsh/machine.zsh
[ -e ~/.zsh/start.zsh   ] && . ~/.zsh/start.zsh
