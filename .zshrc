# Created by snowkluster for 5.8.1

# https://git-scm.com/book/sv/v2/Bilaga-A:-Git-in-Other-Environments-Git-in-Zsh
# https://medium.com/pareture/simplest-zsh-prompt-configs-for-git-branch-name-3d01602a6f33
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats " %F{#c4a000}(%B%b)%f "
precmd() {
    vcs_info # precmd run before rendering the cmd unto the screen
}
setopt prompt_subst

alias ll="eza -al --group-directories-first"
alias ls="eza -G --color=always --sort=size"
alias la="eza -a --color=always"
alias l="eza -xa --color=always --sort=size"
alias composer="composer.phar"

# fnm
export PATH="/home/anon/.local/share/fnm:$PATH"
eval "`fnm env`"


# Created by `pipx` on 2023-12-11 18:57:05
export PATH="$PATH:/home/anon/.local/bin"
. "$HOME/.cargo/env"

export PATH=$PATH:/usr/local/go/bin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
alias nv='nvim'
alias web='python3 -m http.server'
alias nf='fastfetch'
alias tmux='tmux -u' # Render utf-8 characters
# echo -ne "\e]0;Terminal\a" # edit termianl title bar using posix escape sequence
alias btop='btop --utf-force'
alias v='vim'
alias bat='batcat'
alias upgrade='sudo apt update && sudo apt upgrade'
alias kittyupdate='curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin'
alias lg='lazygit'

# colorful man pages stdin less format
# https://unix.stackexchange.com/questions/108699/documentation-on-less-termcap-variables
# https://unix.stackexchange.com/questions/119/colors-in-man-pages
export LESS_TERMCAP_mb=$'\e[1;31m'
export LESS_TERMCAP_md=$'\e[1;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
# export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_so=$'\E[30;43m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;32m'

# colorful man pages using bat
# export MANPAGER="sh -c 'col -bx | batcat -l man -p'"

export BAT_THEME="tokyo-night"
eval "$(oh-my-posh init zsh --config ~/.config/pure.omp.json/)"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source /etc/zsh_command_not_found
# source ~/.zsh/prompt/prompt.zsh

bindkey '^[[1;5A' history-substring-search-up
bindkey '^[[1;5B' history-substring-search-down
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

HISTSIZE=6000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

eval "$(fzf --zsh)"
# eval "$(pip completion -z)"

# Personal Functions

mkcd () {
  mkdir "$1"
  cd "$1"
}
