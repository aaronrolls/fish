set -xU EDITOR nvim
set -U LYNX_CFG ~/.config/lynx/lynx.cfg
set -U DYLD_LIBRARY_PATH ~/.rustup/toolchains/stable-aarch64-apple-darwin/lib/
set -Ux BIBLE ~/Library/Mobile*Documents/iCloud*md*obsidian/Documents/Database/Bible/The*Bible*AKJV*
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source
set fish_greeting

if status is-interactive
and not set -q TMUX
    if tmux has-session -t home
	exec tmux attach-session -t home
    else
        tmux new-session -s home
    end
end

alias sshaaronrolls="ssh -i ~/@database/Sensitive/aaronrolls_key.pem ec2-user@54.153.152.56"
alias sshthoroughbread2server="ssh -i ~/@database/Sensitive/thoroughbread2server_key.pem ec2-user@13.210.148.109"
alias sshthoroughbread="ssh -i ~/@database/Sensitive/thoroughbread_key.pem bitnami@3.24.170.97"
alias qview="qlmanage -p"
alias ls="exa"
