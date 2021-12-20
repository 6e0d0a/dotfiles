#!/bin/bash

main=$(dirname $(realpath $0))

# Options
opt_symbolic=false
opt_remove=false

while getopts hsr opt; do
	case $opt in
		s) opt_symbolic=true ;;
		r) opt_remove=true ;;
		h)
			echo "Options:"
			echo -e "\t-s -> Creates symbolic links instead of copying files"
			echo -e "\t-r -> Remove old configuration if exists"
			exit 0
			;;
		*)
			echo "Use -h option to show help message :)" >&2
			exit 1
	esac
done

# === Functions ===
function banner() {
	echo "     __ _ _           ";
	echo -e "    / _(_) | \e[4m6e\e[0m0d\e[4m0a's\e[0m ";
	echo "   | |_| | |/ _ \/ __|";
	echo "  _|  _| | |  __/\__ \\";
	echo " (_)_| |_|_|\___||___/";
	echo "                      ";
}

function copy() {
	if $opt_symbolic; then
		ln -s $1 $2 && echo "'$2' linked to '$1'"
	else
		cp -r $1 $2 && echo "'$1' copied to '$2'"
	fi
}

function install_config() {
	src=$main/configs/$1
	if [ -d $src ]; then
		target=$HOME/.config/$1
		
		if [ -d $target ]; then
			if $opt_remove; then
				rm -rf $target && echo "'$target' removed"
			else
				mv $target ${target}_backup && echo "'$target' moved to '${target}_backup'"
			fi
		fi
		copy "$src" "$target"
	fi
}

# === Script entry ===
banner

# === Install configurations ===
install_config kitty
install_config nvim

# === Install scripts ===
# zshrc
if [ -f $HOME/.zshrc ]; then
	if $opt_symbolic; then
		echo "source $main/scripts/zshrc" >> $HOME/.zshrc
	else
		cat $main/scripts/zshrc | grep -v "#\!" >> $HOME/.zshrc
	fi
	echo "ZSHRC installed"
else
	echo "'$HOME/.zshrc' not found!" >&2
fi

echo -e "\nDONE :)"
