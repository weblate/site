#!/bin/bash

hugo
rsync -avz --delete public/ admin@languages-in-floss.eu:/var/www/my_webapp__2
