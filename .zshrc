# If you come from bash you might have to change your $PATH.
# export path=$home/bin:/usr/local/bin:$path

# path to your oh-my-zsh installation.
  export zsh=/home/sandeep/.oh-my-zsh

# set name of the theme to load. optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# see https://github.com/robbyrussell/oh-my-zsh/wiki/themes
zsh_theme="agnoster"

# set list of themes to load
# setting this variable when zsh_theme=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# an empty array have no effect
# zsh_theme_random_candidates=( "robbyrussell" "agnoster" )

# uncomment the following line to use case-sensitive completion.
# case_sensitive="true"

# uncomment the following line to use hyphen-insensitive completion. case
# sensitive completion must be off. _ and - will be interchangeable.
# hyphen_insensitive="true"

# uncomment the following line to disable bi-weekly auto-update checks.
# disable_auto_update="true"

# uncomment the following line to change how often to auto-update (in days).
# export update_zsh_days=13

# uncomment the following line to disable colors in ls.
# disable_ls_colors="true"

# uncomment the following line to disable auto-setting terminal title.
# disable_auto_title="true"

# uncomment the following line to enable command auto-correction.
# enable_correction="true"

# uncomment the following line to display red dots whilst waiting for completion.
# completion_waiting_dots="true"

# uncomment the following line if you want to disable marking untracked files
# under vcs as dirty. this makes repository status check for large repositories
# much, much faster.
# disable_untracked_files_dirty="true"

# uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# the optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# hist_stamps="mm/dd/yyyy"

# would you like to use another custom folder than $zsh/custom?
# zsh_custom=/path/to/new-custom-folder

# which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# example format: plugins=(rails git textmate ruby lighthouse)
# add wisely, as too many plugins slow down shell startup.
plugins=(
  git composer laravel
)

source $zsh/oh-my-zsh.sh

# user configuration

# export manpath="/usr/local/man:$manpath"
export term=xterm-256color

# you may need to manually set your language environment
# export lang=en_us.utf-8

# preferred editor for local and remote sessions
# if [[ -n $ssh_connection ]]; then
#   export editor='vim'
# else
#   export editor='mvim'
# fi

# compilation flags
# export archflags="-arch x86_64"

# ssh
# export ssh_key_path="~/.ssh/rsa_id"

# set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the zsh_custom folder.
# for a full list of active aliases, run `alias`.
#
# example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#hiding username in agnoster
prompt_context () { }

# custom alias
alias _="sudo "
alias apts="sudo apt search "
alias apti="sudo apt-get install "
alias open="xdg-open"
alias .net="dotnet"
alias apt="sudo apt"
alias vim="nvim"
alias vi="nvim"
alias oldvim="\vim"
#export term=xterm-256color

#powerline for zsh
if [[ -r /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
fi

#enabling utf-8 not enabled by default
export lc_all=en_us.utf-8
export lang=en_us.utf-8


#custom user paths
#PATH="./vendor/bin:$PATH"

