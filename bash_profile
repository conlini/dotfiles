if [[ -f .loader && -r .loader ]]; then
    source .loader
fi

#enable bash completion if available
if [ -f $(brew --prefix)/etc/bash_completion ]; then
   . $(brew --prefix)/etc/bash_completion
fi


#export ES_MIN_MEM=4096m
#export ES_MAX_MEM=4096m
source ~/.git-completion.bash
# rpm extract -    rpm2cpio nds_catmgt_tgs-2.56.200-0_20140821043700_el5.noarch.rpm | cpio -i --make-directories
