#!/bin/sh

INITDIR=$PWD

doas su $USER -c "cd $HOME && $INITDIR/desktop.sh"