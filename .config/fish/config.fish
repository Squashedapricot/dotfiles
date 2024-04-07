if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR nvim

set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

## Starship Prompter ##
starship init fish | source

## zoxide smarter commandline file explorer ##
zoxide init fish | source

#=== Aliases ===#
alias ls="eza --icons"
alias mdt='mdt --dir tasks --inbox ~/tasks/inbox.md'

alias ssha="eval (ssh-agent -c)&&ssh-add"

#=== MariaDB ===#
set -x username "sr3m"
set -x password "pass"

#== Rocm ==#
set -x HSA_OVERIDE_GFX_VERSION 11.0.0
set -x HIP_VISIBLE_DEVICES 0
set -x PYTORCH_HIP_ALLOC_CONF "garbage_collection_threshold:0.8,max_split_size_mb:512"
