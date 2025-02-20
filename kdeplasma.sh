#!/bin/bash

runcommand ()
{
#Fixing broken ubuntu dependencies for some cases 
  sudo apt update
  sudo apt upgrade
  sudo apt --fix-broken install
#Installing KDE Plasma Desktop
  sudo apt install kde-plasma-desktop -y
  echo "KDE Plasma Installed"
#Installing Chrome Remote Desktop (CRD)
  curl -o /tmp/chrome-remote-desktop_current_amd64.deb https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb && \
  sudo apt install -y /tmp/chrome-remote-desktop_current_amd64.deb
  echo "Chrome Remote Desktop Installed"
#Installing Chrome Browser (latest)
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i google-chrome-stable_current_amd64.deb
  echo "Chrome Installed"
#Installing Burpsuite

#Updating Gnome and reinstalling CRD to fix the broken input issue
  sudo apt autoremove -y
  sudo apt update
  sudo apt-get install chrome-remote-desktop
}

runcommand
