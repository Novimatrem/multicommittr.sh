set +x
#!/bin/bash

# multicommittr.sh

echo ""

function pause(){
 read -s -n 1 -p "Press any key to continue . . ."
 echo ""
}

echo ""
echo "multicommittr.sh MAC"

echo ""
echo "Clones GitLab commits to GitHub."
echo "Run after every commit."
echo ""


#echo ""
#echo "THE WINDOWS VERSION OF MULTICOMMITTR REQUIRES YOU HAVE CYGWIN INSTALLED."
#echo "and"
#echo "IN ITS DEFAULT DIRECTORY, C:\cygwin64"
#echo "and"
#echo "THAT YOU INSTALLED rsync DURING ITS INITIAL INSTALLATION."
#echo ""
#echo "MEANING THAT YOU HAVE AN EXE BINARY OF rsync AT C:\cygwin64\bin\rsync"
#echo ""
pause
echo ""
echo "Starting..."

echo ""

# cd to folder so it's not messy
cd /home/$(whoami)

cd %username%
cd /home/$(whoami)
cd ..
rmdir Working
rm -rf Working
rmdir Working
rm -rf Working
sleep 1s
pwd && mkdir Working

cd Working
rm -rf GitHub
rm -rf GitLab
echo ""
echo ""
read -p "Which GitLab repo did you just commit to? " reponame

# start downloading all my repos gitlab
echo "Pulling repo from GitLab..."
mkdir GitLab
cd GitLab
echo "zrepos repo is too heavy, we don't back up"
echo "only-working-amd-gpu-driver repo is too heavy, we don't back up"
echo ""
echo NOTABLE444
pwd
git clone https://gitlab.com/Novimatrem/$reponame
# end downloading all my repo gitlab

echo "Done."

echo "AFTER_CLONE_POINT"
pwd
echo "--"

cd /home/$(whoami)
cd Working
cd GitLab

# copy changes to github
#echo "pwd:"
#pwd


#echo ""
#echo "GitLab commit..."
#echo ""
#echo "pwd:"
#pwd
#echo ""
#cd /home/$(whoami)
#cd Working
#cd GitLab
#cd $reponame

#git add --all
#git commit -m "$commitmsg"
#git push -u origin $repoisnewold

#echo "Done."






cd /home/$(whoami)
cd Working

cd ..

# start downloading all my repos github
echo "Pulling repos from GitHub..."
# THIS IS THE CORRECT PATH
mkdir GitHub
cd GitHub
git clone https://github.com/Novimatrem/$reponame

echo "Done."
echo ""
echo ""
read -p "Is this an old master or new main repo (GITHUB)? (main/master) " repoisnewold

echo ""
echo "GitHub commit..."
echo ""
echo "pwd:"
pwd
echo ""

cd ..
cd ..
cd %username%
cd /home/$(whoami)
pwd
pwd && mkdir Working
cd Working
cd GitLab
cd $reponame

echo "pwd2"
pwd

cd /home/$(whoami)
cd Working
rm -rf GitHub
cd ..
cd ..
echo NOTABLE
rm -rf GitHub
rmdir GitHub
rm -rf GitHub
rmdir GitHub



echo NOTABLE2
pwd
# WHAT THE FUCK
#mkdir GitHub
cd GitHub
cd GitHub
cd GitHub
cd GitHub
cd GitHub

rm -rf source-configs
rmdir source-configs

#THE_FUCKENING
pwd
mkdir GitHub
cd GitHub
git clone https://github.com/Novimatrem/$reponame

echo INCREDIBLE_PWD
pwd


cd ..

rsync -av --exclude=".*" GitLab/. GitHub/

cd /home/$(whoami)
cd Working
cd GitHub

cd $reponame

#git config --global --edit
""
echo IMPORTANT pwd
pwd
echo ""
git add --all
echo ""
echo ""
git commit -m "multicommittr sync"
git push -u origin $repoisnewold

cd ..

pwd
 

cd ..
cd ..

rm -rf Working
rmdir Working
rm -rf Working
rmdir Working

rm -rf terminal-1.18.1462.0
rmdir terminal-1.18.1462.0
rm -rf terminal-1.18.1462.0
rmdir terminal-1.18.1462.0

rm -rf package.zip

rm -rf "terminal-1.18.1462.0"
rmdir "terminal-1.18.1462.0"
rm -rf "terminal-1.18.1462.0"
rmdir "terminal-1.18.1462.0"



echo "Done."




#test
#test2
#test3
#test4
#test5
#test6
#test7
#test8
#test9
#test10

#pwd
#ls

cd /home/$(whoami)
cd Working
rm -rf GitHub
rm -rf GitLab


echo ""
echo "All done, commit clone completed!"
echo ""
echo "AFTER YOU HAVE CLOSED this Terminal window, manually delete the folder"
echo "named terminal-1.18.1462.0 - or else it breaks next commit. That's all!"
echo ""
echo "Have a nice day!"
echo ""
echo [Process completed]
pause
exit
sleep 999999999999999999999999999s
sleep 999999999999999999999999999s
sleep 999999999999999999999999999s
# EOF
#

