# 2.4-v900
Repo to post klipper backup of my 3d printers


Install git
```
sudo apt-get install git -y
```

Setup git
```
cd ~/klipper_config/
git init
git remote add origin <Your-GitHub-Repo-URL>
git add .
git commit -m "my first backup"
git push -u origin master
```

Use SSH to Auth into gihub and auto backup configs 
Generate SSH
```
ssh-keygen -t rsa -C "your_email@example.com"
```

Verify SSH
```
ssh -T git@github.com
```

Nexy time
```
scripts/git_backup.sh
```

Restore with settings with git
```
cd ~/klipper_config/
git fetch -all
git reset --hard origin/master
```

New Install
```
cd ~
git clone <Your-GitHub-Repo-URL>
```

Links - 
https://github.com/richardjm/voronpi-klipper-backup \n
https://github.com/fwiffo/klipper-config/blob/main/client_macros.cfg
