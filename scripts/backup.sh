#!/bin/bash

OUTPUT=$HOME/backup_linux

if [ ! -d $OUTPUT ]
then
    mkdir -p $OUTPUT
fi


CONFIG_FILES=(alacritty nvim i3 kitty dunst picom polybar ranger rofi)
DEFAULT_DIRS=(Documentos Imagens Downloads scripts)
DOTFILES=$OUTPUT/dotfiles
FONTS=$OUTPUT/fonts
THEMES=$OUTPUT/themes
ICONST=$OUTPUT/icons

echo -e "Starting backup...\n"
echo "========================================"
echo "           Default files                "
echo "========================================"

for dir in ${DEFAULT_DIRS[*]}
do
    echo -n "Copying $dir ..."
    cp -r ~/$dir $OUTPUT
    echo "done."
done

echo -e "\n"
echo "========================================"
echo "           Config files                 "
echo "========================================"
mkdir -p $DOTFILES
for cfg in ${CONFIG_FILES[*]}
do
    echo -n "Copying ~/.config/$cfg ..."
    cp -r ~/.config/$cfg $DOTFILES
    echo "done."
done

echo -e "\n"
echo "========================================"
echo "           Fonts                        "
echo "========================================"

echo -n "Copying fonts ..."
mkdir -p $FONTS
sudo cp -r /usr/share/fonts/* $FONTS
echo "done."

echo -e "\n"
echo "========================================"
echo "           Themes                       "
echo "========================================"

echo -n "Copying themes ..."
mkdir -p $THEMES
sudo cp -r ~/.themes/* $THEMES
echo "done."

echo -e "\n"
echo "========================================"
echo "           icons                        "
echo "========================================"

echo -n "Copying icons ..."
mkdir -p $ICONS
sudo cp -r ~/.icons/* $ICONS
echo "done."

echo -e "\n"

echo -n "Generating compressed file... "
tar -czf backup.tar.gz $OUTPUT
echo -e "done.\n"

echo "Finish backup."
