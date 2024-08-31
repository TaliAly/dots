import os
rootdir = '/home/takis/.dots/'

for subdir, dirs, files in os.walk(rootdir):
    for file in files:
        print(os.path.join(subdir, file))
