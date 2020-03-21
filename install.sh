printf "Welcome to install script for my tmux config\n"
for file in ./tmux_conf/.tmux*
do
	letter=$(echo $file | cut -b24-)
	filen=$(echo $file | cut -b13-)
	printf "$filen: $letter\n"
done

printf "Enter config ID you wish to use: "
read config

printf "$config chosen.\n"
config="./tmux_conf/.tmux.conf_$config"

flag=0

for file in ./tmux_conf/.tmux*
do
	if [ $file = $config ]; then
		flag=1
	fi
done

if [ $flag = 0 ]; then
	printf "Invalid config selected\n"
else
	config=$(echo $config | cut -b3-)
	config="~/repos/.tmux/$config"
	./newconf.sh "$config"
	mkdir -p ~/bin
	mkdir -p ~/.config
	cp ./dpnd/scripts/* ~/bin 
	cp -r ./dpnd/powerline ~/.config
fi
