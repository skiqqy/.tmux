# .tmux

[![Build Status](https://travis-ci.com/Skippy404/.tmux.svg?branch=master)](https://travis-ci.com/Skippy404/.tmux)

## Table of Contents
1. [Installing](#Installing)
    1. [Dependencies](#Installing-the-dependencies)
	    1. [Powerline](#Powerline)
		2. [Powerline-Fonts](#Powerline-Fonts)
2. [Change Configs](#Changing-Configs)
3. [Config Dependencies](#Config-Dependencies)
4. [Notes](#Notes)
5. [Config-Examples](#Config-Examples)

## Installing
Clone anywhere, then `./install.sh` and follow the instructions.

Or, copy the following, and paste it in your terminal
````
cd
mkdir repos
cd repos
git clone https://github.com/skippy404/.tmux
cd .tmux
./install.sh
````
Please note, there are dependencies, namely powerline, and powerline-fonts,
currently these depenencies are only needed for config B, the rest of the
configs can be used safely. 

Alternatively, you can run the following, to install the tmux configs and my
other [dotfiles](https://github.com/skippy404/.dotfilesMinimal) (aka my vim, bash
and zsh configs, as well as other scripts, note this method requires sudo, as
all dependencies are installed)
````
curl -O yggpi.co.za/install.sh && bash install.sh
````

### Installing-the-dependencies

#### Powerline

* Arch/ Manjaro
````
yay -S powerline
````
* Fedora
````
sudo dnf install powerline
````
* Ubuntu
````
sudo apt install powerline
````

#### Powerline-Fonts
````
cd
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
````

## Changing-Configs
To change to a different config, simply run `./newconf.sh path/to/conf`

Example: `./newconf ~/repos/.tmux/tmux_conf/.tmux.conf_A`

## Config-Dependencies
* Config A: None
* Config B: powerline, powerline-fonts

## Notes
* If you have spotify installed, your current song being played is displayed in
the bottem left corner (When using config A).
* Your battery is shown in the bottem left corner (When using config A)
* For .tmux.conf\_B, powerline must be installed

## Config-Examples

__.tmux.conf\_A__

![Config A](https://i.imgur.com/qgLaC70.jpg)

__.tmux.comf\_B__
![Config\_B](https://i.imgur.com/7YrW5qp.jpg)
