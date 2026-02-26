
# --- Git-aware, colored prompt: matt | 📁 dir | 🌿 branch ---
setopt PROMPT_SUBST

autoload -Uz vcs_info
precmd() { vcs_info }        # refresh git info before each prompt

# Show a magenta branch like: 🌿 main
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '%F{magenta}🌿 %b%f'

# Prompt: cyan user | green dir | (branch only in git repos)
PROMPT='%F{cyan}%n%f | 📁 %F{green}%1~%f ${vcs_info_msg_0_}
$ '