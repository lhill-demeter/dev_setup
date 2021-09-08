#!/bin/bash

# Install and confirgure Homebrew
which -s brew
if [[ $? != 0 ]]; 
then
    # Install homebrew
    echo "Installing Home Brew.."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    printf "\n"
    printf "Hombrew has been installed"
else
    printf "Home Brew installed" 
    printf "\n"
fi
printf "\n"


# Install GIT
which -s git 
if [[ $? != 0 ]]; 
then
    # Install git
    printf "Installing Git..."
    brew install git  
else
    # Print git installed
    printf "Git installed"
    printf "\n"
fi
printf "\n"


# Install python 3
which -s python3
if [[ $? != 0 ]];
then
    # Install python3
    printf "Install Python3 and PIP 3"
    brew install python3
    printf "\n"
    printf "Python3 and PIP 3 installed"
    printf "\n"
else
    printf "Python3 and PIP 3 installed"
    printf "\n"
fi
printf "\n"


# Install AWS CLI
which -s aws
if [[ $? != 0 ]];
then
    # Install AWS CLI
    printf "Install AWS CLI"
    brew install awscli
else
    printf "AWS CLI installed\n\n "    
fi


# Install Docker desktop and cli
which -s docker
if [[ $? != 0 ]];
then
    # Install Docker and Docker Desktop
    printf "Installing docker\n\n"
    brew cask install docker
    printf "Docker installed\n\n"
else
    printf "Docker installed\n\n"
fi


# Install and extensions for VS Code
which -s code
if [[ $? != 0 ]];
then
    # Install VS code
    printf "Installing VS Code"
    brew install --cask visual-studio-code
    # Add Visual Studio Code to path
    cat << EOF >> ~/.zprofile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

    printf "VS Code installed"
    printf "\n"
    # Add extensions to VS code
    printf "Adding extensions:\n\tms-azuretools.vscode-docker\n\tms-vscode-remote.remote-containers"
    code --install-extension ms-azuretools.vscode-docker 
    code --install-extension ms-vscode-remote.remote-containers
    # add linter
else
    printf "VS Code installed"
    printf "\n"
fi
printf "\n"

# add and configure webstorm
which -s webstorm
if [[ $? != 0 ]];
then
    # install webstorm
    printf "installing Webstorm\n\n"
    brew cask install webstorm
    printf " Webstorm installed"
else
    printf "Webstorm installed"