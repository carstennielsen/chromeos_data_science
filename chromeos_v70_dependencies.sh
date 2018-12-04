#!/bin/sh

#First update the beta chromebook Linux "update" and "upgrade" under "sudo" or superuser credentials

sudo apt-get update && sudo apt-get upgrade


#INSTALL DEPENDENCIES

#Install dirmngr so that we can add the external repository

sudo apt install dirmngr --install-recommends

#Add a PPA reference to Debian

sudo apt install software-properties-common

#Install HTTPS support for secure protocols

sudo apt install apt-transport-https

#Install wget sp that we can get files

sudo apt-get install wget

#Update and upgrade

sudo apt-get update && sudo apt-get upgrade