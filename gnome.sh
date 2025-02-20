#!/bin/bash

runcommand ()
{
#Fixing broken ubuntu dependencies for some cases 
  sudo apt update
  sudo apt upgrade
  sudo apt --fix-broken install
#Installing Ubuntu Gnome Desktop
  sudo apt install ubuntu-gnome-desktop -y
  echo "Gnome Installed"
#Installing Chrome Remote Desktop (CRD)
  curl -o /tmp/chrome-remote-desktop_current_amd64.deb https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb && \
  sudo apt install -y /tmp/chrome-remote-desktop_current_amd64.deb
  echo "Chrome Remote Desktop Installed"
#Installing Chrome Browser (latest)
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i google-chrome-stable_current_amd64.deb
  echo "Chrome Installed"
#Installing p7Zip Desktop
  sudo snap install p7zip-desktop
  echo "p7Zip Installed"
#Installing HTTP Toolkit
  wget https://github.com/httptoolkit/httptoolkit-desktop/releases/download/v1.17.1/HttpToolkit-1.17.1.deb
  sudo dpkg -i HttpToolkit-1.17.1.deb
  echo "HTTP Tool Kit installed"
#Updating Gnome and reinstalling CRD to fix the broken input issue
  sudo apt autoremove -y
  sudo apt update
  sudo apt-get install chrome-remote-desktop
}

runcommand
