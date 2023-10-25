#!/bin/bash

HMDIR=$(echo ~)
FOLDER=".vimbash$(date +%s)"

mkdir "${HMDIR}/${FOLDER}"
echo "About to move files into ${HMDIR}..."
echo "**Expect more output on success**"

# just a simple copy of existing files, files won't be overwritten unless the first copy works
touch ${HMDIR}/.vimrc ${HMDIR}/.bashrc ${HMDIR}/.bash_profile ${HMDIR}/.bash_aliases ${HMDIR}/.git-prompt.sh && cp ${HMDIR}/.vimrc ${HMDIR}/.bashrc ${HMDIR}/.bash_profile ${HMDIR}/.bash_aliases ${HMDIR}/.git-prompt.sh ${HMDIR}/${FOLDER} && cp .vimrc .bashrc .bash_profile .bash_aliases .git-prompt.sh ${HMDIR} && echo "Successfully copied files..." 
