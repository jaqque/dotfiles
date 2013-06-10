# Use liquidprompt, with zsh-git-prompt

source ~/.dotfiles/libs/liquidprompt/liquidprompt
source ~/.dotfiles/libs/zsh-git-prompt/zshrc.sh

__GIT_PROMPT_DIR=~/.dotfiles/libs/zsh-git-prompt
ZSH_THEME_GIT_PROMPT_NOCACHE=1

# replace Liquid prompt's git with zsh-git-prompt
_lp_git_branch_color () {
  git_super_status
}

# replace _lp_battery with something that understands OS X's battery weirdness
_lp_battery() {
  _local_lp_battery
}
