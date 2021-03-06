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
  sudo apt install nodejs npm &> /dev/null
}

installnodearch() { \
  sudo pacman -S nodejs npm &> /dev/null
}

installnode() { \
  echo "➜ Installing node..."
  [ "$(uname)" == "Darwin" ] && installnodemac
  [  -n "$(uname -a | grep Ubuntu)" ] && installnodeubuntu
  [ -f "/etc/arch-release" ] && installnodearch
  [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ] && echo "Windows not currently supported"
  sudo npm i -g neovim
}


# cloning Domm Nvim
cloneconfig() { \
  echo "➜ Installing Doom-Nvim"
  git clone https://github.com/terminal-guy/Doom-Nvim.git ~/.config/nvim
}

installcocextensions() { \
  # Install extensions
  mkdir -p ~/.config/coc/extensions
  cd ~/.config/coc/extensions
  [ ! -f package.json ] && echo '{"dependencies":{}}'> package.json
  # Change extension names to the extensions you need
  # sudo npm install coc-explorer coc-snippets coc-json coc-actions --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
  sudo npm install coc-explorer coc-snippets coc-yank coc-flutter coc-json coc-actions --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
}

# pip 

installpiponmac() { \
  sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
  python3 get-pip.py
  rm get-pip.py
}

installpiponubuntu() { \
  sudo apt install python3-pip &> /dev/null
}

installpiponarch() { \
  sudo pacman -S python-pip &> /dev/null
}

installpip() { \
  echo "➜ Installing pip..."
  [ "$(uname)" == "Darwin" ] && installpiponmac
  [  -n "$(uname -a | grep Ubuntu)" ] && installpiponubuntu
  [ -f "/etc/arch-release" ] && installpiponarch
  [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ] && echo "Windows not currently supported"
}

installpynvim() { \
  echo "➜ Installing pynvim..."
  pip3 install pynvim --user
}



#backup old config

moveoldnvim() { \
  echo "⟹ Backing up your nvim config to nvim.old"
  mv $HOME/.config/nvim $HOME/.config/nvim.old
}


moveoldcoc() { \
  echo "⟹ Moving your coc to coc.old"
  mv $HOME/.config/coc $HOME/.config/coc.old
}



installplugins() { \
  mv $HOME/.config/nvim/init.vim $HOME/.config/nvim/init.vim.tmp
  mv $HOME/.config/nvim/.service/init.vim $HOME/.config/nvim/init.vim
  echo "➜ Installing  plugins..."
  nvim --headless +PlugInstall +qall > /dev/null 2>&1
  mv $HOME/.config/nvim/init.vim $HOME/.config/nvim/.service/init.vim
  mv $HOME/.config/nvim/init.vim.tmp $HOME/.config/nvim/init.vim
}
checkpluginsareinstalled() {\
  echo "➤ checking and Sourcing Plugins"
  nvim --headless +PlugInstall +qall > /dev/null 2>&1


}
asktoinstallnode() { \
  echo "node not found"
  echo -n "Would you like to install node now (RECOMMENED) (y/n)? "
  read answer
  [ "$answer" != "${answer#[Yy]}" ] && installnode && installcocextensions
}

asktoinstallpip() { \
  # echo "pip not found"
  # echo -n "Would you like to install pip now (y/n)? "
  # read answer
  # [ "$answer" != "${answer#[Yy]}" ] && installpip
  echo "Please install pip3 before continuing with install"
  exit
}

installonmac() { \
  brew install ripgrep fzf ranger the_silver_searcher fd
}

pipinstallueberzug() { \
  which pip3 > /dev/null && pip3 install ueberzug &> /dev/null || echo "Not installing ueberzug pip not found"
}

installonubuntu() { \
  sudo apt install ripgrep fzf ranger silversearcher-ag fd-find &> /dev/null
  sudo apt install libjpeg8-dev zlib1g-dev python-dev python3-dev libxtst-dev &> /dev/null
  pip3 install ueberzug  &> /dev/null
  pip3 install neovim-remote  &> /dev/null
}


installonarch() { \
  sudo pacman -S ripgrep the_silver_searcher fd fzf ranger --noconfirm
  which yay > /dev/null && yay -S python-ueberzug-git --noconfirm || pipinstallueberzug
  pip3 install neovim-remote
}


installextrapackages() { \
 echo "➜ Installing Extra Plugins....."

  [ "$(uname)" == "Darwin" ] && installonmac
  [  -n "$(uname -a | grep Ubuntu)" ] && installonubuntu
  [ -n "$(uname -a | grep arch)" ] && installonarch
#u  [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ] && echo "Windows not currently supported"
}

# Welcome
echo '➜ Installing Doom Nvim'

# install pip
which pip3 > /dev/null && echo "➜ pip installed, moving on..." || asktoinstallpip

# install node and neovim support
which node > /dev/null && echo "➜ node installed, moving on..." || asktoinstallnode


# install pynvim
pip3 list | grep pynvim > /dev/null && echo "pynvim installed, moving on..." || installpynvim

# move old nvim directory if it exists
[ -d "$HOME/.config/nvim" ] && moveoldnvim

# move old nvim directory if it exists
[ -d "$HOME/.config/coc" ] && moveoldcoc

# clone config down
cloneconfig

#[ "$answer" != "${answer#[Yy]}" ] && installextrapackages || echo "not installing extra packages"

# echo "Nvim Mach 2 is better with at least ripgrep, ueberzug and ranger"
# echo -n "Would you like to install these now?  (y/n)? "
# read answer
installextrapackages 

# install plugins
which nvim > /dev/null && installplugins

installcocextensions
echo ""
echo ""



checkpluginsareinstalled

echo "➣ DONE Instaling Doom-Nvim"

echo ""
echo ""

