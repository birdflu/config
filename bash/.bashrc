


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# fixbug Bash auto complete for environment variables
if ((BASH_VERSINFO[0] >= 4)) && ((BASH_VERSINFO[1] >= 2))
    then shopt -s direxpand
fi

# mute spotify advertisement 
# python3 ~/store/work/spotmute/advmute.py -o /tmp/output.txt &

# key mapping
#xkbcomp ~/.config/xkb/symbols/my $DISPLAY > /dev/null 2>&1

export SICP=$HOME/store/work/sicp/lispsicp
export DATALOG=$HOME/store/work/datalog
export PATH=/home/birdflu/.jdks/openjdk-14.0.2/bin/:$PATH
export JAVA_HOME=/home/birdflu/.jdks/openjdk-14.0.2
       
