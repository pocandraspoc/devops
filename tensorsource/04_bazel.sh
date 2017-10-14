bazel_in(){
	wget "https://github.com/bazelbuild/bazel/releases/download/0.5.2/bazel-0.5.2-without-jdk-installer-linux-x86_64.sh"	
	chmod +x ./bazel-0.5.2-without-jdk-installer-linux-x86_64.sh
	./bazel-0.5.2-without-jdk-installer-linux-x86_64.sh --user
	echo "PATH="$PATH:$HOME/bin"" >> /etc/environment
}


bazel_in




