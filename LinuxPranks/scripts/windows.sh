#!/bin/bash

cd ~
echo "export PS1='C:${PWD////\\\\}> '" >> ~/.bashrc
cd -
echo "Done!"
