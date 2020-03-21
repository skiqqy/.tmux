# .tmux

## Installing
Please note, there are dependencies, namely powerline, and powerline-fonts,
currently these depenencies are only needed for config B, the rest of the
configs can be used safely. 

### Installing the dependencies

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

### Installing tmux configs

Clone inside ~/repos, then run the install script and follow the instructions

Or, copy the following, and paste it in your terminal
````
cd
mkdir repos
cd repos
git clone https://github.com/skippy404/.tmux
cd .tmux
./install.sh
````

## Changing configs
To change to a different config, simply run `./newconf.sh path/to/conf`

Example: `./newconf ~/repos/.tmux/tmux_conf/.tmux.conf_A`

## Config Dependenies
* Config A: None
* Config B: powerline, powerline-fonts

## Notes
* If you have spotify installed, your current song being played is displayed in
the bottem left corner (When using config A).
* Your battery is shown in the bottem left corner (When using config A)
* For .tmux.conf\_B, powerline must be installed
