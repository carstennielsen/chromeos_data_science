#!/bin/sh

#First update the beta chromebook Linux "update" and "upgrade" under "sudo" or superuser credentials

sudo apt-get update && sudo apt-get upgrade


#INSTALL R

#Add the GPG key

sudo apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'

#Add the CRAN repository, that match Chome OS Linux version (Debian Stretch), to sources.list

sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/debian stretch-cran35/'

#Run update to get new package manifests

sudo apt update

#Installing basic R package and the development package

sudo apt install r-base r-base-dev

#Add write permissions to the R folders

sudo chmod -R 777 /usr/lib/R

sudo chmod -R 777 /usr/share/R

#Update and upgrade

sudo apt-get update && sudo apt-get upgrade


#INSTALL RSTUDIO

#Install libxslt1.1 which is missing en the .deb file 

sudo apt-get install libxslt1.1

#Get the .deb file that match Chome OS Linux version (Debian Stretch) 

sudo wget https://download1.rstudio.org/rstudio-xenial-1.1.414-amd64.deb

#Install the package

sudo dpkg -i rstudio-xenial-1.1.414-amd64.deb

#Install missing dependencies

sudo apt install -f

#Clean up

rm rstudio-xenial-1.1.414-amd64.deb

#Update and upgrade

sudo apt-get update && sudo apt-get upgrade

#THE RSTUDIO APP CAN NOW BE FOUND IN THE CHROME OS LAUNCHER
