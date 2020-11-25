# Copy this file to ~/

# Set English as default language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Enable git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

# Enable zsh completions
plugins=(… zsh-completions)
autoload -Uz compinit && compinit