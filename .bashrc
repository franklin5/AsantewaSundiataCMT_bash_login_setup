# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
#intel compiler setup 
source  /home/ld7/intel/bin/compilervars.sh intel64
#intel mkl setup: Intel(R) 64 architecture, MKL F95 modules, 8 bytes ineger
source /home/ld7/intel/mkl/bin/mklvars.sh intel64 mod ilp64 
# when using MKL, use the linker advisor:
# local version: file:///home/ld7/intel/composerxe/Documentation/en_US/mkl/mkl_link_line_advisor.htm
# or the online versin https://software.intel.com/en-us/articles/intel-mkl-link-line-advisor
# openmpi setup
export PATH=/home/ld7/bin/openmpi-1.8.1/installation/bin:$PATH
export LD_LIBRARY_PATH=/home/ld7/bin/openmpi-1.8.1/installation/lib:$LD_LIBRARY_PATH
# totalview setup
export PATH=/home/ld7/bin/totalview/totalview/bin:$PATH
# git setup
export PATH=/home/ld7/bin/git/bin:$PATH
export PATH=/home/ld7/bin/texlive2014/usr/local/texlive/2014/bin/x86_64-linux:$PATH
# I followed this link for shared host install of git: http://joemaller.com/908/how-to-install-git-on-a-shared-host/
# after the change in .bashrc, don't forget to source it by typing:
# source ~/.bashrc
# and reopens the terminal and it should be effective immediately.
# This is the auto-completion file for git.
source ~/.git-completion.sh
#alias gitk="/usr/bin/wish $(which gitk)"
alias e="emacs -nw"
alias ev="evince"
alias ll="ls -ltr"
# PETSC and SLEPC setup
export PETSC_DIR=/home/ld7/bin/petsc-3.5.1
#export PETSC_ARCH=linux-gnu-intel
export PETSC_ARCH=/home/ld7/bin/petsc-3.5.1/linux-gnu-intel
export SLEPC_DIR=/home/ld7/bin/slepc-3.5.0

# some other old configurations from Leslie...
#export MANPATH=$MANPATH:/home/lob1/opt/petsc-2.3.3-p7/externalpackages/mpich2-1.0.5p4/man/
#source /home/lob1/intel/fce/10.0.023/bin/ifortvars.sh
#source /home/lob1/intel/mkl/10.0.011/tools/environment/mklvarsem64t.sh
#export PETSC_DIR=/home/lob1/opt/petsc-3.0.0-p6
#export SLEPC_DIR=/home/lob1/opt/slepc-3.0.0-p4
#export PETSC_ARCH=real_optimized
#export PETSC_ARCH=mumps-spooles-optimized
#export SIPS_DIR=/home/lob1/opt/sips
#export SIPS_DIR=/home/lob1/opt/sips_Apr13_08
#export OMP_NUM_THREADS=1
#export KRB5_CONFIG=/home/lob1/krb5/krb5.conf
# font setup 
set mainfont {Inconsolata 14}
set textfont {Inconsolata 14}
set uifont {"Inconsolata Bold" 12}
# alias setup
alias cdw="cd /home/ld7/workspace" 
alias cdb="cd /home/ld7/bin"
alias sshs="ssh ld7@sundiata.rice.edu"
alias sshc="ssh ld7@cmt.rice.edu"
alias ssha="ssh ld7@asantewa.rice.edu"
alias sshg="ssh ld7@gordon.sdsc.xsede.org"
alias sshd="ssh ld7@davinci.rice.edu"
