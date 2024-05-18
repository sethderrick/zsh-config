# zsh-config

Exactly what it says. It's my zsh configuration. That means it's specific to how I like *my* shell to look and behave. 
You can use mine as it is or customize it to your own taste. But it is damn handy to be able to have my whole shell 
config up and running in a few shell commands!

### To build and use...

1. Clone this repo to wherever you keep your repos on the box where you want to configure zsh
2. If you already have a ~/.zshconfig back it up and delete the original like this:
   ```
   mv ~/.zshcrc ~/.zshrc_backup
   ```
3. If you already have a custom folder in your oh-my-zsh folder, do the same thing
   ```
   mkdir -p ~/.oh-my-zsh/custom/backup_zsh && mv ~/.oh-my-zsh/custom/*.zsh ~/.oh-my-zsh/custom/backup_zsh/
   ```
4. Symlink the .zshrc from the repo to where it usually is found
   ```
   ln -s /path/to/parent/of/zsh-config/zsh-config/.zshrc ~/.zshrc
   ```
   For me that looks like:
   ```
   ln -s ~/Projects/Code/zsh-config/.zshrc ~/.zshrc
   ```
5. Symlink the content of the repo's custom folder to where .zsh files are normally found holding custom aliases and such for OhMyZsh to find and make part of the .zshrc
   ```
   ln -s /path/to/parent/of/zsh-config/zsh-config/custom/*.zsh ~/.oh-my-zsh/custom/
   ```
   For me that looks like:
   ```
   ln -s ~/Projects/Code/zsh-config/custom/*.zsh ~/.oh-my-zsh/custom
   ```
6. Source your .zshrc
   ```
   source ~/.zshrc
   ```
7. ENJOY!!
