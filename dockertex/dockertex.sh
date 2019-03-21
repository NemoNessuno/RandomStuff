#!/bin/bash

TARGET=$1
if [ $# -eq 0 ]
then
	TARGET=$PWD
fi
echo Starting Docker Tex in $TARGET.
docker run -it --rm -v $TARGET:/home -w /home sumdoc/texlive-2017 /bin/bash
