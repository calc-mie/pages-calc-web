#!/bin/bash
DIR="/srv/pages-calc-web"

if [ ! -e "$DIR" ] ; then
    echo "create!"
    sudo mkdir ${DIR}
    sudo chown :CSM ${DIR}
    sudo chmod g+w ${DIR}
    sudo touch ${DIR}/index.html
    sudo cp -R ./admin ${DIR}
    sudo chown :CSM ${DIR}/admin/*
    sudo cp ./Makefile ./.pages-build ./.indextmp.txt ${DIR}
    sudo chown :CSM ${DIR}/Makefile
    sudo chown :CSM ${DIR}/.pages-build
    sudo chown :CSM ${DIR}/.indextmp.txt
    sudo chown :CSM ${DIR}/index.html
    sudo chmod g+w ${DIR}/index.html
    sudo chmod g+x ${DIR}/.pages-build
    ${DIR}/.pages-build restart
fi
