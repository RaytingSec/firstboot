#!/usr/bin/python3

import subprocess
import argparse
import time


Environment = 'gnome'  # 'cinnamon'
Machine = 'laptop'  # 'desktop'
Hypervisor = 'vmware'


parser = argparse.ArgumentParser()

parser.add_argument('--vm', action='store_true', default=False)
parser.add_argument('--gui', action='store_true', default=False)
parser.add_argument('--host', action='store_true', default=False)
parser.add_argument('--server', action='store_true', default=False)

parser.add_argument('--files', action='store_true', default=False)
parser.add_argument('--cat', action='store_true', default=False)

args = parser.parse_args()

sh = []

sh.append('core.sh')

# data=~/Data
# if [[ -d $data ]]; then
#     echo "Using ~/Data"
# elif [[ -d "/data/" ]]; then
#     echo "Using /data/"
#     ln -s /data/ ~/Data
# else
#     echo "Warning, no data directory found"
#     exit 1
# fi

if args.vm:
    sh.append('vm.sh')
    if Environment is 'gnome':
        sh.append('gnome-vm.sh')
if args.gui:
    sh.append('packages-gui.sh')
    sh.append('sublime.sh')
    sh.append('arc-theme.sh')
    if Environment is 'gnome':
        sh.append('gnome.sh')
        sh.append('extensions.sh')
if args.host:
    if Machine is 'laptop':
        sh.append('laptop.sh')
    sh.append('directories.sh')
    sh.append('packages-host.sh')
    if Environment is 'gnome':
        sh.append('gnome-host.sh')
        sh.append('extensions-host.sh')
    # Applications
    sh.append('flashplayerdebugger.sh')
    sh.append('vmware.sh')
    sh.append('thinkorswim.sh')
if args.server:
    sh.append('server.sh')

for script in sh:
    if args.files:
        print(script)
    elif args.cat:
        with open(script) as file:
            contents = file.read()
        print('# {}'.format(script))
        print(contents)
    else:
        print('\nRunning {}\n'.format(script) + '=' * 30)
        time.sleep(3)
        subprocess.call(['bash', script])
