#!bin/bash

[]

gitIns=$(which git)

[[ ! "$gitIns" ]] && sudo apt install git

mkdir ~/.icons/
git clone https://github.com/daniruiz/flat-remix 

cp -r flat-remix/Flat-Remix* ~/.icons/ &&
gsettings set org.gnome.desktop.interface icon-theme "Flat-Remix"

mkdir ~/.themes
git clone https://github.com/lassekongo83/zuki-themes
mv ~/zuki-themes/* ~/.themes

sudo add-apt-repository ppa:webupd8team/terminix
sudo apt update 
sudo apt install tilix

sudo apt install breeze-cursor-theme




# POWERLINE INSTALLA~/.profileTION

sudo apt-get install python-pip git

pip install --user git+git://github.com/Lokaltog/powerline

sed -e "/$aif [ -d \"$HOME\/.local\/bin\" ]; then" | -e "/$aPATH=\"$HOME\/.local\/bin:$PATH\"" | -e "/$afi" ~/.profile

wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/


touch ~/.vimrc
#
#set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

#" Always show statusline
#set laststatus=2

#" Use 256 colours (Use this setting only if your terminal supports 256 #colours)
#set t_Co=256
#



if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi


#start icons 

arch=$(find ~/sardi-icons -type f -iname "start-here-arch.svg" | awk 'NR==1')
cp $arch /.icons/Flat-Remix-Dark/actions/symbolic
mv start-here-arch.svg view-grid-symbolic.svg








