# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Show virtual env name in prompt 
function prompt_venv() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    echo "%F{blue}(${VIRTUAL_ENV:t})%f"
  fi
}

# Customize the prompt to include the virtual environment name
export PS1='$(prompt_vent)'$PS1

