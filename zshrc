# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

linkdir () {
 if (( $# != 2 )) then
 	echo "usage: linkdir <dir> <type>"
	echo "       this adds a link to dir at ~/src/links/<type>/<dir>"
	echo "       also available:"
	echo "           listlinks - list links"
 else 
			mkdir -p ~/src/links/$2 ; 
			echo "ln -s $1 ~/src/links/$2/$1"; 
			ln -s $1 ~/src/links/$2/$1 ; 
 fi 
}

listlinks() {
	 if (( $# == 0 )) then
 		command ls -1 ~/src/links 
		echo "usage: listlinks [<dir>]";	  
	  else	 	
	  	command ls ~/src/links/$1		
	 fi;
}

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow-completion git-flow git-hubflow git-extras vagrant)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
unalias git
export EDITOR="/usr/local/bin/mate -w"

export PATH="$PATH:/Users/crc/libs/gradle-2.1/bin"


PERL_MB_OPT="--install_base \"/Users/crc/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/crc/perl5"; export PERL_MM_OPT;
