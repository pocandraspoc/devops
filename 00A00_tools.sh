#!/bin/bash
pip_in(){
	NOTE="Install python pip"
	apt-get update && apt-get -y upgrade
	apt-get install python-pkg-resources=3.3-1ubuntu1 -y
	apt-get install python-setuptools -y
	apt-get install python-pip -y
	pip install --upgrade pip
	apt-get install python-dev -y
	pip install ipython
	pip install requests 
	pip install tabulate
	apt-get install unzip -y
	apt-get install python-numpy python-dev python-pip python-wheel -y
	apt-get install libcupti-dev -y
}

nano_in(){
	apt-get install nano -y
	echo "nano installed"
}

subl_in(){
	echo -ne '\n' | add-apt-repository ppa:webupd8team/sublime-text-2
	apt-get update
	apt-get install sublime-text -y

}

inteli_in(){
	add-apt-repository -y ppa:mystic-mirage/pycharm
	add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make
	add-apt-repository ppa:ubuntu-desktop/ubuntu-make -y
	apt-get update
	apt-get install ubuntu-make -y
	# echo "Y" | umake ide idea 
	# echo "Y" | umake ide idea-ultimate # Replace with your command.
}


tools(){
	pip_in
	nano_in
	subl_in
	inteli_in
	echo "Useful tools"
}

tools
