#Change keyboard language
setxkbmap -option grp:alt_shift_toggle us,es
#ra autocomplete in Python
export PYTHONSTARTUP=/etc/python/.pythonrc

LALSUITE_SRCDIR=${HOME}/src  
LALSUITE_PREFIX=${HOME}/opt/lalsuite 

#LSCSOFT_PREFIX=${LSCSOFT_LOCATION:-"$HOME/opt/lscsoft"}
#LSCSOFT_TMPDIR=${LSCSOFT_TMPDIR:-"/tmp/lscsoft-install"} 

export PKG_CONFIG=/usr/bin/pkg-config


LSCSOFT_LOCATION=${HOME}/opt/lscsoft # change this as appropriate
export LSCSOFT_LOCATION
if [ -f ${LSCSOFT_LOCATION}/lscsoft-user-env.sh ] ; then
  . ${LSCSOFT_LOCATION}/lscsoft-user-env.sh
fi


#Source the lal things:
#lal
source ${LALSUITE_SRCDIR}/lalsuite/lal/lal-user-env.sh

#lalsimulation
source ${LALSUITE_SRCDIR}/lalsuite/lalsimulation/lalsimulation-user-env.sh

#matlab
alias matlabt='matlab -nodesktop -nosplash'

#For extended globbing:
shopt -s extglob

# Set Proxy
function setproxy() {
    export {http,https,ftp}_proxy="http://121.131.155.98:8080"
}

# Unset Proxy
function unsetproxy() {
    unset {http,https,ftp}_proxy
}


#for i in `echo $(( ( RANDOM % 52 )  + 1 ))p`; do for j in `echo $(( ( RANDOM % $(wc -l < ~/.task/pending.data) )  + 1 ))p`; do cowsay -f $(sed -n -e $i ~/listacow) $(sed -n -e $j ~/.task/pending.data | cut -d '"' -f2) ;done ; done

for i in `echo $(( ( RANDOM % 52 )  + 1 ))p`; do cowsay -f $(sed -n -e $i ~/listacow) $(sed -n -e 1p ~/.task/pending.data | cut -d '"' -f2) ;done

#Change order of tasks
head -1 ~/.task/pending.data >> ~/.task/pending.data
tail -`expr $(wc -l < ~/.task/pending.data) - 1` ~/.task/pending.data > ~/temp
cat ~/temp > ~/.task/pending.data

#for i in `echo $(( ( RANDOM % 52 )  + 1 ))p` ; do cowsay -f $(sed -n -e $i ~/listacow) $(sed -n -e 1p ~/.task/pending.data | cut -d '"' -f2) ; done 
#for i in `echo $(( ( RANDOM % 52 )  + 1 ))p` ; do cowsay -f $(sed -n -e $i ~/listacow) hola guapo  ; done 
