#!/bin/bash

function createproject() {
    cd
    python3.7 /home/sam/Documents/Projects/my_projects/gitHubCreateRepoAutomation/create.py $1
    cd /home/sam/Documents/Projects/my_projects/$1
    git init
    git remote add origin https://github.com/samhuxtable/$1.git
    echo $1 > README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master
    atom .
}
