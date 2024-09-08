#!/bin/bash

clear

function pause(){
 read -s -n 1 -p "Press any key to continue . . ."
 echo ""
}

echo "multicommittr.sh"

echo ""

echo "Downloading your existing repos from GitLab..."

echo ""

# cd to folder so it's not messy
cd /home/$(whoami)
cd Working

# start downloading all my repos github
echo "Pulling repos from GitLab..."
mkdir GitLab
cd GitLab
echo "zrepos repo is too heavy, we don't back up"
echo "only-working-amd-gpu-driver repo is too heavy, we don't back up"
echo ""
git clone https://gitlab.com/Novimatrem/znippets
#git clone https://gitlab.com/Novimatrem/zrepos
git clone https://gitlab.com/Novimatrem/my-awesomewm-mods
git clone https://gitlab.com/Novimatrem/novimatrem.gitlab.io
git clone https://gitlab.com/Novimatrem/social
git clone https://gitlab.com/Novimatrem/novisona
git clone https://gitlab.com/Novimatrem/blog
git clone https://gitlab.com/Novimatrem/pain
git clone https://gitlab.com/Novimatrem/textadv.sh
git clone https://gitlab.com/Novimatrem/ra-all
git clone https://gitlab.com/Novimatrem/exec-bat-anything-from-any-protonprefix
git clone https://gitlab.com/Novimatrem/few-fedi-bot-diaspora-mac10-6
git clone https://gitlab.com/Novimatrem/bedtime-reminder
git clone https://gitlab.com/Novimatrem/my-estrogen-reminders
git clone https://gitlab.com/Novimatrem/mood-meds-remind
git clone https://gitlab.com/Novimatrem/my-shower-reminder
git clone https://gitlab.com/Novimatrem/talking-clock
git clone https://gitlab.com/Novimatrem/alarm-clock
git clone https://gitlab.com/Novimatrem/batch-alarm-clock
git clone https://gitlab.com/Novimatrem/super-lock-key
git clone https://gitlab.com/Novimatrem/clearclipboard
git clone https://gitlab.com/Novimatrem/random-files
git clone https://gitlab.com/Novimatrem/improved-visibility-map-mod-for-vulture-for-nethack
git clone https://gitlab.com/Novimatrem/clear-bash-history
git clone https://gitlab.com/Novimatrem/rules-succer
git clone https://gitlab.com/Novimatrem/hearing-protector-65-megapack
git clone https://gitlab.com/Novimatrem/limit-pulseaudio-max-volume-to-100-percent
git clone https://gitlab.com/Novimatrem/warning-sound-if-volume-is-100-percent
git clone https://gitlab.com/Novimatrem/ff14-download-timing-script
git clone https://gitlab.com/Novimatrem/dnd-dungeon-layout-map-maker
#git clone https://gitlab.com/Novimatrem/only-working-amd-gpu-driver
git clone https://gitlab.com/Novimatrem/fedora-linux-personal-autosetup
git clone https://gitlab.com/Novimatrem/teeth
git clone https://gitlab.com/Novimatrem/untitled-batch-game-engine-old-abandoned
git clone https://gitlab.com/Novimatrem/personal-autosetup-linux-ubuntu
git clone https://gitlab.com/Novimatrem/a-walk-in-the-park-part1
git clone https://gitlab.com/Novimatrem/c64-basic-stuffs
git clone https://gitlab.com/Novimatrem/walking-reminder
git clone https://gitlab.com/Novimatrem/noexif
git clone https://gitlab.com/Novimatrem/few-fedi-bot
git clone https://gitlab.com/Novimatrem/haiku-themes-linux
git clone https://gitlab.com/Novimatrem/do-bash-thing-if-in-awesomewm
git clone https://gitlab.com/Novimatrem/xkill-keybind
git clone https://gitlab.com/Novimatrem/youtube-dl
git clone https://gitlab.com/Novimatrem/bacon-double-cheeseburger-mod_vulture-for-nethack
git clone https://gitlab.com/Novimatrem/dvorak-qwerty-switch-keybind
git clone https://gitlab.com/Novimatrem/dvorak-qwerty-switch-aliases
git clone https://gitlab.com/Novimatrem/ytdlmp3-command
git clone https://gitlab.com/Novimatrem/look-at-my-snippets-please
git clone https://gitlab.com/Novimatrem/multicommittr.sh

echo "Done."
clear
read -p "Which repo did you just work on? " reponame

read -p "Which is your commit message? " commitmsg

read -p "Is this an old master or new main repo? (main/master) " repoisnewold

echo ""
echo "GitLab commit..."
echo ""
echo "pwd:"
pwd
echo ""
cd /home/$(whoami)
cd Working
cd GitLab
cd $reponame

git add --all
git commit -m "$commitmsg"
git push -u origin $repoisnewold

echo "Done."

#test
#test2

#pwd
#ls

pause

# EOF
#

