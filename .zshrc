# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    autojump
    yarn
    pnpm
    gh
    zsh-syntax-highlighting
    zsh-autosuggestions
    bun
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#### ALIAS ####

# VSCode Alias
alias e="cursor ."
alias r="cursor -r ."

# Development Alias
alias s="BROWSER=none npm run start"
alias sb="BROWSER=none npm run sb"
alias b="npm run build"
alias d="BROWSER=none npm run dev"
alias t="npm run typecheck"
alias ex="npm run export"
alias bs="b && s"
alias gprm='git pull --rebase origin $(git_main_branch)'
alias gprs='git pull --rebase origin staging'
alias dg="pnpm db:generate"
alias pdb="pnpm db:push"

# GitHub Alias
alias gprc="gh pr create"
alias gprw="gh pr create -w" 
alias gprp="gh pr create -w --body-file .github/pull_request_template.md" 
alias gprf="gh pr create -f"
alias gis="gh issue create"
alias gism="gh issue create -a 'theodorusclarence'"

# Flow Alias
alias gcmr="bash /Users/Clarence/flow/main-and-delete-branch.sh"
alias gcsr="bash /Users/Clarence/flow/staging-and-delete-branch.sh"
alias emr="bash /Users/Clarence/flow/git-emergency.sh"
alias vc="/bin/bash '/Users/Clarence/flow/vc.sh'"
alias gv="gh repo view --web"
alias prv="gh pr view --web"

# Brew
alias bresta="brew services restart"
alias bresto="brew services stop"
alias brest="brew services start"

# Dimension
alias dwb="underpass -p 3001 -s dim"


# Captive Apple
# @see https://github.com/unixorn/tumult.plugin.zsh/blob/main/bin/unfuck-captive-portal
alias captive='exec open -a "Safari" "http://captive.apple.com/hotspot-detect.html"'

# fnm env https://github.com/Schniz/fnm
eval "$(fnm env --use-on-cd)"

# zoxide https://github.com/ajeetdsouza/zoxide
eval "$(zoxide init zsh)"

# Laravel
# @see https://www.youtube.com/watch?v=uXnNRFLX9JI&ab_channel=Bitfumes
export PATH="$HOME/.composer/vendor/bin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

source ~/.spaceshiprc.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/clarence/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/clarence/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/clarence/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/clarence/google-cloud-sdk/completion.zsh.inc'; fi

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
