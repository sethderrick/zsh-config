# Oh-my-zsh initialization
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"  # You can change this to your preferred theme
plugins=(
	git 
	conda
	zsh-autosuggestions
)       # Add or modify plugins as needed

source $ZSH/oh-my-zsh.sh

# User configuration
# Almost all of these should be moved over to task-/area-specific 
# .zsh files in ~/.oh-my-zsh/custom/ per the directives of the 
# OhMyZsh ptb
#
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh
# [[ ! -f !/.p10k.zsh ]] || source ~/.p10k.zsh

# Conda initialization (managed by 'conda init')
__conda_setup="$('/home/seth/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/seth/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/seth/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/seth/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# CUDA paths
export PATH=/opt/cuda/bin:$PATH
export LD_LIBRARY_PATH=/opt/cuda/targets/x86_64-linux/lib:$LD_LIBRARY_PATH

# Manjaro-specific configurations
USE_POWERLINE="true"
HAS_WIDECHARS="false"
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
    source /usr/share/zsh/manjaro-zsh-config
fi
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
    source /usr/share/zsh/manjaro-zsh-prompt
fi

