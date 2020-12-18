# Speed up ZSH 
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

nvm() {
  echo "🚨 NVM not loaded! Loading now..."
  unset -f nvm
  export NVM_PREFIX=$(brew --prefix nvm)
  [ -s "$NVM_PREFIX/nvm.sh" ] && . "$NVM_PREFIX/nvm.sh"
  nvm "$@"
}

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=/Users/evgeni.s/.oh-my-zsh

export NODE_PATH='/usr/local/lib/node_modules'

export PATH="$PATH:$HOME/npm/bin"

export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfi"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# ZSH_THEME="sunrise"
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(
  git
  fzf
#  osx
#  web-search
#  node
#  npm
#  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# ZSH Configs
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)

POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH=10
POWERLEVEL9K_VCS_SHORTEN_LENGTH=17
POWERLEVEL9K_VCS_SHORTEN_STRATEGY=truncate_middle

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=''
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_from_right


# Vim
alias e="nvim"
alias last="ls -tr | tail -1"

# Markdown
alias ed="e ~/my-wiki/rabotai/draft.md"
alias ev="e ~/.vimrc"
alias ez="e ~/.zshrc"
alias sz="source ~/.zshrc"
# Units
alias u="cd ~/Repos/units/"

# Newsroom
alias f="cd ~/Repos/newsroom-frontend/frontend/"
alias fc="(cd ~/Repos/newsroom-frontend/frontend/ && npm run dev)"
alias fs="(cd ~/Repos/newsroom-frontend/frontend/ && npm run start)"
alias fb="(cd ~/Repos/newsroom-frontend/frontend/ && npm run storybook)"
alias hud="cd ~/Repos/newsroom-hud-extension/newsroom-overlay"
alias ct="cd ~/Repos/config-tool"

# RBox
alias r="cd ~/Repos/products/trc-client-rbox/"
alias rs="cd ~/Repos/products/trc-client-rbox/src/test/selenium-js/"
alias rbox="cd ~/Repos/products/trc-client-rbox/ && mvn test -Drun-client-proxy -DskipTests -Dskip.node"
alias hosts="sudo nvim /etc/hosts"


#alias selenium="cd /Users/evgeni.s/Repos/units/node_modules/taboola-nightwatch/selenium_drivers/ && java -Dwebdriver.chromer=./chredriver -jar selenium-server-standalone-3.8.1.jar"
#alias bmproxy="/Users/evgeni.s/Repos/units/node_modules/taboola-nightwatch/selenium_drivers/bmp/bin/browsermob-proxy --port 9090 --use-littleproxy true"

alias hs="sudo http-server -p 80"
alias grv="grv"
alias connection="wget --spider http://google.com"

# Safe delete rm
del() {
  mv -i $1 /tmp
}
alias selenium='/Users/evgeni.s/Repos/products/trc-client-rbox/src/test/selenium-js/node_modules/taboola-nightwatch/selenium_drivers/'
alias history='omz_history | lolcat'

alias youdb='cd ~/Movies/Youtube && youtube-dl -f best '

alias sizeOf="du -hcs "

# --------------------------------------
# fzf Config
# --------------------------------------
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fe() {
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-nvim} "${files[@]}"
}

# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# fgc - checkout git branch (including remote branches), sorted by most recent commit, limit 30 last branches
fgc() {
  local branches branch
  branches=$(git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format="%(refname:short)") &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}



# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export JAVA_HOME=$(/usr/libexec/java_home)

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function path(){
    old=$IFS
    IFS=:
    printf "%s\n" $PATH
    IFS=$old
}
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/ruby@2.5/bin:$PATH"
export PATH="/usr/local/opt/ruby@2.5/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"