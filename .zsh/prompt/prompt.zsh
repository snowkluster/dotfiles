# https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html#Prompt-Expansion
# https://zsh.sourceforge.io/Doc/Release/User-Contributions.html#vcs_005finfo-Examples
# https://linuxhandbook.com/customize-zsh-prompt/
# Work on this and remove dependancy like oh-my-posh or starship 


# Default prompt 
PS1="%F{#4e9a06}%B%n@%m%b%f:%F{#3465a4}%B%~%b%f$ "

# Git prompt right hand side
RPROMPT=\$vcs_info_msg_0_

# Secondary prompt
PS2="%F{#729fcf}❯❯%f "

# https://zsh.sourceforge.io/Doc/Release/User-Contributions.html#Recent-Directories
# remember to test this could be possible to add autojump without autojump or zoxide
