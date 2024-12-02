import os
import subprocess
from os.path import isdir

# Path to the folder
folder_path = "/home/takis/.dots"

folders = []

for name in os.listdir(folder_path):
    if isdir(os.path.join(folder_path, name)):
        folders.append(name)
print(folders)

result = subprocess.run(['flatpak', 'list', '--columns=application'])
result.stdout
