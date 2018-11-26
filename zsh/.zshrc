# Path to your oh-my-zsh installation.
export ZSH=/Users/along/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="spaceship"
#ZSH_THEME="agnoster"
ZSH_THEME="af-magic"

# Spaceship config
#SPACESHIP_PROMPT_SEPARATE_LINE=true
#SPACESHIP_VI_MODE_SHOW=false

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ng)

# User configuration
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export EDITOR='vim'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
export DEFAULT_USER=along

# Aliases
alias ll="ls -la"
alias tf="cd $HOME/sandbox/griffin"
alias guard="grails -reloading -debug -plain-output -echoOut -Ddo.not.fork.tests=true test-app -guard integration:"
alias search="find . -name '*.groovy' -o -name '*.java' | xargs grep -i "
alias gvm="sdk"
alias bootRun="gradle bootRun -Dgrails.run.active=true" 
alias idea="open -a IntelliJ\ IDEA "

# Java Stuff
export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_181`

# Bintray user information
export BINTRAY_USER=longwa
export BINTRAY_KEY=a8eee9e7d7bdf7faee2de1dd34975fd18972cfb6

# Vi mode for shells
set -o vi

# Disable default glob matching
setopt +o nomatch

export PATH=$HOME/bin:/usr/local/bin:$PATH

# Initialize ruby environment
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Initialize chef environment
# if which chef > /dev/null; then eval "$(chef shell-init zsh)"; fi

lazynvm() {
  unset -f nvm node npm
  export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
}

nvm() {
  lazynvm
  nvm $@
}

node() {
  lazynvm
  node $@
}

npm() {
  lazynvm
  npm $@
}

# SDK Man
export SDKMAN_DIR="/Users/along/.sdkman"
[[ -s "/Users/along/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/along/.sdkman/bin/sdkman-init.sh"
