#!/bin/bash

clear

function pause(){
 read -s -n 1 -p "Press any key to continue . . ."
 echo ""
}

echo "multicommittr.sh"

echo ""
echo "Clones GitLab commits to GitHub, and then backs them up to Dropbox."
echo "Run after every commit."
echo ""

pause

echo "Starting..."

echo ""

# cd to folder so it's not messy
cd /home/$(whoami)
cd Working
rm -rf GitHub
rm -rf GitLab
clear
read -p "Which GitLab repo did you just commit to? " reponame

# start downloading all my repos gitlab
echo "Pulling repo from GitLab..."
mkdir GitLab
cd GitLab
echo "zrepos repo is too heavy, we don't back up"
echo "only-working-amd-gpu-driver repo is too heavy, we don't back up"
echo ""
git clone https://gitlab.com/Novimatrem/$reponame
# end downloading all my repo gitlab

echo "Done."


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

# start downloading all my repos github
echo "Pulling repos from GitHub..."
mkdir GitHub
cd GitHub
git clone https://github.com/Novimatrem/multicommittr.sh

echo "Done."
clear
read -p "Is this an old master or new main repo (GITHUB)? (main/master) " repoisnewold

echo ""
echo "GitHub commit..."
echo ""
echo "pwd:"
pwd
echo ""

cd /home/$(whoami)
cd Working
cd GitLab
cd $reponame

echo "pwd2"
pwd

cd /home/$(whoami)
cd Working
rm -rf GitHub

mkdir GitHub
cd GitHub

git clone https://github.com/Novimatrem/multicommittr.sh

cd /home/$(whoami)
cd Working

rsync -av --exclude=".*" GitLab/. GitHub/

cd /home/$(whoami)
cd Working
cd GitHub

cd $reponame


git add --all
clear
read -p "and what was the commit message (identical)? " commitmsg
git commit -m "$commitmsg"
git push -u origin $repoisnewold

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

#pwd
#ls

pause

# EOF
#

