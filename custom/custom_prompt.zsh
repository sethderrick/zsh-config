# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 
fi 

if [ -f  /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then 
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi 

# Show virtual env name in prompt 
function prompt_venv() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    echo "%F{blue}(${VIRTUAL_ENV:t})%f"
  fi
}

# Customize the prompt to include the virtual environment name
export PS1='$(prompt_vent)'$PS1

