if [ $# -eq 0 ]; then
	printf "Usage: ./newconf </path/to/conf>\n"
else
	eval file="$1"
	if [ -f "$file" ]; then
		printf "file $file is being loaded\n"
		mkdir -p ~/.backup
		mv ~/.tmux.conf ~/.backup
		ln -s $file ~/.tmux.conf
	else
		printf "File DNE\n"
		exit 1
	fi
fi
