# Test all config files
for file in ./tmux_conf/.tmux*
do
	letter=$(echo $file | cut -b24-)
	echo "$letter" > /tmp/.tmuxLetter.in
	./install.sh < /tmp/.tmuxLetter.in
done
