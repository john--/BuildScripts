#!/bin/bash

## Note: This file should rarely change. This pulls down the latest CI script and executes it 

git subtree pull --prefix .github_scripts https://github.com/john--/BuildScripts.git master --squash -m "update"

sh ${PWD}/.github_scripts/ci-build.sh
