if [[ -f .exports && -r .exports]]; then
    source .exports
fi

#enable bash completion if available
if [ -f $(brew --prefix)/etc/bash_completion ]; then
   . $(brew --prefix)/etc/bash_completion
fi

#enable aliases
if [ -f ~/.my_aliases ]; then
	source ~/.my_aliases
fi

#export ES_MIN_MEM=4096m
#export ES_MAX_MEM=4096m
source ~/.git-completion.bash
export TOMCAT_HOME=/usr/local/Cellar/tomcat/7.0.53/libexec
alias gitk='gitk &'
# rpm extract -    rpm2cpio nds_catmgt_tgs-2.56.200-0_20140821043700_el5.noarch.rpm | cpio -i --make-directories
