#  _____     _    _     
# |_   _|   | |  (_)    
#   | | __ _| | ___ ___ 
#   | |/ _` | |/ / / __|      https://github.com/talialy
#   | | (_| |   <| \__ \      Say hi!
#   \_/\__,_|_|\_\_|___/
#
#

set fish_greeting
set fish_function_path (path resolve $__fish_config_dir/functions/*/) $fish_function_path
source (path resolve $__fish_config_dir/aliases.fish) 

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish
source ~/.config/envman/PATH.env
fish_add_path /home/takis/.spicetify

