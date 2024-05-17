alias ga="git add ."
alias gc="git commit"
alias gp="git push"
alias gs="git status"


#git_init_new() {
    # if [ -z "$1" ]; then
    #     echo "Usage: git_init_new <repository_name>"
    #     return 1
    # fi

    # repository_name="$1"
    # github_username="sethderrick"

    # # Check if the repository already exists on GitHub
    # if gh repo view "$github_username/$repository_name" &>/dev/null; then
    #     echo "Repository $repository_name already exists on GitHub."
    #     return 1
    # fi

    # # Initialize a new Git repository locally
    # git init

    # # Create an initial commit
    # git commit -m "Initial commit"

    # # Create a new repository on GitHub
    # gh repo create "$github_username/$repository_name" --public --confirm

    # echo "Initialized local Git repository and created GitHub repository: $repository_name"
#}

#git_init_existing() {
  #if [ -z "$1" ]; then
    #echo "Usage: git_init_existing <repo_name>"
    #return 1
  #fi
  #git init
  #git repo clone git@github.com:sethderrick/$1.git .
  #git push -u origin main
#}

