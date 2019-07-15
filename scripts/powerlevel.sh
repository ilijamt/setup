#!/usr/bin/env bash

function git_pull_or_clone() {
    echo "Installing/updating $2 into $1"
    if [[ ! -d "$1" ]]; then
        mkdir -p $1
    fi
    if [[ ! -d "$1/.git" ]]; then
        git clone $2 $1
    fi
    git -C $1 pull
}

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git_pull_or_clone $HOME/.oh-my-zsh/custom/plugins/zsh-completions https://github.com/zsh-users/zsh-completions.git
git_pull_or_clone $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions.git
git_pull_or_clone $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting https://github.com/zsh-users/zsh-syntax-highlighting.git
git_pull_or_clone $HOME/.oh-my-zsh/custom/plugins/history-search-multi-word https://github.com/zdharma/history-search-multi-word.git
git_pull_or_clone $HOME/.oh-my-zsh/themes/powerlevel9k https://github.com/bhilburn/powerlevel9k.git
git_pull_or_clone $HOME/.oh-my-zsh/themes/powerlevel10k https://github.com/romkatv/powerlevel10k.git