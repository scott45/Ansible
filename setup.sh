#!/bin/bash

sudo apt-get update
sudo apt-get -y install ansible git curl yum
sudo apt-get -y install python-pip python-dev build-essential libpq-dev libssl-dev libffi-dev
pip install --upgrade ndg-httpsclient 
sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv
sudo pip install psycopg2