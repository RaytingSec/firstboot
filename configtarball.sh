#!/bin/bash
# Handles backup of config files
# Note it creates temp dir and tarball in working dir

config_dir=~/code
backup=configs
tarfile=configs.tar.gz

# End dir
mkdir $backup
if [ -e "$tarfile" ]; then
    echo "Deleting existing tarball"
    rm $tarfile
fi

echo "Copying local configs..."
config_repos=(
    linux-config
    sublime-config
    autovenv
    foxsay
    firstboot
)
for repo in "${config_repos[@]}"; do
    # cp -ar $config_dir/$repo $backup
    rsync -a --exclude=.git -- $config_dir/$repo $backup
done

echo "Copying external configs..."
mkdir $backup/molokai/
cp -a $config_dir/External/molokai/colors/molokai.vim $backup/molokai/
mkdir $backup/Hack/
cp -a $config_dir/External/Hack/build/ttf/* $backup/Hack/

echo "Tarballing..."
sleep 0.1  # crashes unless you wait
tar czf $tarfile $backup

echo "Cleaning up..."
rm -rf $backup

echo "Done!"
