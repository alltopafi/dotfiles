setopt -J

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset

emojis=("👾" "🌐" "🎲" "🌍" "🐉" "🌵")

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}


if [ $SHELL != "/bin/zsh" ]
then
  parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }

  print_before_the_prompt () {
      dir=$PWD
      home=$HOME
      dir=${dir/"$HOME"/"~"}
      printf "\n $txtred%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "[git:$(parse_git_branch)]"
  }

  PROMPT_COMMAND=print_before_the_prompt
  PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
  PS1="$EMOJI >"
else
  PS1="$PS1
$EMOJI > "
fi

function mkcd()
{
	mkdir $1 && cd $1
}

export GOPATH=/Users/Jesse/Documents/Programming/go
export PATH=/Library/flutter/bin:$PATH
export PATH=/Library/apache-maven-3.6.0/bin:$PATH
export PATH=/Users/jesse/Downloads/traefik-migration-tool_v0.13.4_darwin_amd64:$PATH
export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:$PATH"
export PATH="/Users/jesse/.scripts:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-16.0.1.jdk/Contents/Home

#-------
#Aliases
#-------
alias ls="ls -l"
alias hideAll="defaults write com.apple.finder AppleShowAllFiles NO"
alias showAll="defaults write com.apple.finder AppleShowAllFiles YES"
alias finder="sudo killall Finder"
alias server="sh ~/serverStart.sh"
alias gs="git status"
alias gbs="git brach --sort=committerdate"