# Adds includes to settings.json
import sys
import fileinput
import json5
from os.path import relpath

jsonfile = '.vscode/settings.json'

# Read file
f = open(jsonfile) 
data = json5.load(f) 

# Add paths
for path in sys.argv[1].split():
    path = relpath(path, './').rstrip()
    if path not in data['C_Cpp.default.includePath']:
        data['C_Cpp.default.includePath'].append(path)

# Write back to file
with open(jsonfile, 'w') as outfile:
    json5.dump(data, outfile, sort_keys = True, indent = 4, ensure_ascii = False)
