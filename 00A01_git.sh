#!/bin/bash
go_lang(){
	add-apt-repository ppa:gophers/archive -y
	apt update
	apt-get install golang-1.8-go -y
	
	echo 'export PATH=$PATH:/usr/lib/go-1.8/bin' >> ~/.bashrc
	echo 'export PATH=$PATH:~/bin' >> ~/.bashrc
	
	source ~/.bashrc
}


git_in(){
	apt-get update
	apt-get install git -y
}
git_conf(){
	git config --global user.name "pocandraspoc"
	git config --global user.email "pocandraspoc@gmail.com"
}

git_dir(){
	mkdir -p ~/git/testing
 	cd ~/git/testing
}

git_hub(){
	git clone https://github.com/github/hub.git
	hub/script/build -o ~/bin/hub
	alias git=hub
}

git_t(){

	git_in
	git_conf
	git_dir
	
	go_lang
	git_hub
}


apt-get install virtualbox -y
apt-get install vagrant -y
git_t



