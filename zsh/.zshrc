# Path to your oh-my-zsh installation.
export ZSH=/Users/along/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

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
plugins=(git docker knife)

# User configuration
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
export DEFAULT_USER=along

# Aliases
alias ll="ls -la"
alias guard="grails -reloading -debug -plain-output -echoOut -Ddo.not.fork.tests=true test-app -guard integration:"
alias grails_profile="grails -Dprofiler.enabled=true"
alias tf="cd $HOME/sandbox/griffin/trifleet"
alias search="find . -name '*.groovy' -o -name '*.java' | xargs grep -i "
alias gnuke="grails clean-all && grails r-d && grails compile"
alias gvm="sdk"

# Java Stuff
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
#export GRAILS_OPTS="-Xmx4g -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005 -Djava.net.preferIPv4Stack=true -Dfile.encoding=UTF-8 -Dspringloaded.synchronize=true"
export GRAILS_OPTS="-Xmx4g -Djava.net.preferIPv4Stack=true -Dfile.encoding=UTF-8 -Dspringloaded.synchronize=true"
export DYLD_LIBRARY_PATH=/Applications/YourKit.app/Contents/Resources/bin/mac:$DYLD_LIBRARY_PATH
export EDITOR=vim

# Bintray user information
export BINTRAY_USER=longwa
export BINTRAY_KEY=a8eee9e7d7bdf7faee2de1dd34975fd18972cfb6

# Vi mode for shells
set -o vi

export PATH=$HOME/bin:/usr/local/bin:$PATH

function grailsTestOrder() {
    grep testsuite target/test-reports/TESTS-TestSuites.xml | grep -v testsuites | cut -d\  -f8-9 | sed -E 's/name="(.*)" package="(.*)"/\2.\1/' | grep .
}

# Initialize ruby environment
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Initialize chef environment
# if which chef > /dev/null; then eval "$(chef shell-init zsh)"; fi

# SDK Man
export SDKMAN_DIR="/Users/along/.sdkman"
[[ -s "/Users/along/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/along/.sdkman/bin/sdkman-init.sh"
