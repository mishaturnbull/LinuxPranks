#!/usr/bin/python3
# -*- coding: utf-8 -*-

import os
import sys

# load data
with open('script_db.txt', 'r') as database:
    lines = database.readlines()
data = []
for line in lines:
    parts = [s.strip() for s in line.split(',')]
    parts[3] = parts[3].startswith('T')  # True/False
    data.append(parts)
print(data)

def is_root():
    """Returns true if root, False otherwise."""
    return os.geteuid() == 0

def run_script(name):
    """Given a name, run the script after confirmation"""
    for script in data:
        if script[0] == name:
           # we've found the one!
            if script[3]:  # sudo?
                if not is_root():
                    print("Sudo privileges required for that script!")
                    sys.exit(1)
            print("This script has a hilarity-damage ratio of {}".format(script[2]))
            print("Are you sure you want to run this script? [y/N] > ", sep='')
            inp = input().strip().lower()[0]
            if inp == 'y':
                os.system(script[1])

def print_list():
    """Print a list of all the options"""
    print("#\tScript\tH/D\tRequires sudo?")
    print("--------------------------------------")
    i = 0
    for script in data:
        print("{} {}\t{}\t{}".format(
            str(i),
            script[0],
            script[2],
            "Yes" if script[3] else "No"
        ))
        i += 1

def pick_script():
    """Get a script name that user wants to execute"""
    print_list()
    print("Enter a script # > ", sep='')
    inp = input().strip()
    try:
        selection = data[int(inp)]
        return selection[0]
    except:
        print("You dumb")
        return pick_script()

if __name__ == '__main__':
    running = True
    while running:
        try:
            run_script(pick_script())
        except KeyboardInterrupt as exc:
            running = False
