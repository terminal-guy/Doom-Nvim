#/bin/bash

set -o nounset # get the error while undefined variable
set -o errexit # exit when fails


#node and npm 

installnodemac() { \
  brew install lua
  brew install node
  brew install yarn
}

installnodeubuntu() { \
  sudo apt install nodejs
  sudo apt install npm
}

installnodearch() { \
  sudo pacman -S nodejs
  sudo pacman -S npm
}

installnode() { \
  echo "Installing node..."
  [ "$(uname)" == "Darwin" ] && installnodemac
  [  -n "$(uname -a | grep Ubuntu)" ] && installnodeubuntu
  [ -f "/etc/arch-release" ] && installnodearch
  [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ] && echo "Windows not currently supported"
  sudo npm i -g neovim
}

cloneconfig() { \
  echo "Cloning Nvim Mach 2 configuration"
  git clone https://github.com/terminal-guy/Doom-Nvim.git ~/.config/nvim
}


# pip 

installpiponmac() { \
  sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
  python3 get-pip.py
  rm get-pip.py
}

installpiponubuntu() { \
  sudo apt install python3-pip > /dev/null
}

installpiponarch() { \
  pacman -S python-pip
}

installpip() { \
  echo "Installing pip..."
  [ "$(uname)" == "Darwin" ] && installpiponmac
  [  -n "$(uname -a | grep Ubuntu)" ] && installpiponubuntu
  [ -f "/etc/arch-release" ] && installpiponarch
  [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ] && echo "Windows not currently supported"
}

installpynvim() { \
  echo "Installing pynvim..."
  pip3 install pynvim --user
}



#backup old config

moveoldnvim() { \
  echo "Backing up your nvim config to nvim.old"
  mv $HOME/.config/nvim $HOME/.config/nvim.old
}


moveoldcoc() { \
  echo "Moving your coc to coc.old"
  mv $HOME/.config/coc $HOME/.config/coc.old
}



cloneconfig

