First Boot
==============================

## Steps

0. copy configs and firstboot script over
1. update grub config
2. install core packages, configs, etc.
3. gnome configs
4. gnome extensions
5. extra addons and packages as needed

Copy configuration over

```bash
# Mount or download the repos
# In this example, hgfs on vmware
mkdir /tmp/firstboot
cd /mnt/hgfs/code
cp -r -t /tmp/firstboot/ firstboot/ linux-config/ sublime-config/ foxsay/ fortune/
cd /tmp/firstboot
# Everything will be done in this directory
```

```bash
core.sh
core-{gui,host}.sh
packages.sh
packages-{gui,host}.sh
# Various other packages such as sublime.sh
gnome.sh
gnome-{host,vm}.sh
extensions.sh
extensions-host.sh
```

## Example

On a Ubuntu 18.04 VM running Gnome

```bash
core.sh
core-gui.sh
packages.sh
packages-gui.sh
# hack-font.sh
sublime.sh
gnome-vanilla.sh
gnome.sh
gnome-vm.sh
extensions.sh
```

On laptop running bare metal Fedora

```bash
core.sh
core-laptop.sh
core-gui.sh
packages.sh
```
