#!/bin/bash

## Note: This file should rarely change. This pulls down the latest CI script and executes it 

git status

git subtree pull --prefix travis_scripts https://github.com/john--/BuildScripts.git master --squash

chmod +x ${PWD}/travis_scripts/*.py
${PWD}/travis_scripts/ci-build.sh
