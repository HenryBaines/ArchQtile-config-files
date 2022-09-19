#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


#In order to execute "startx" automatically after login:

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
