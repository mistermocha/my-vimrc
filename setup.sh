#!/usr/bin/env bash

for CONFIGFILE in $( find . -type f -maxdepth 1 -name "\.*" -print ); do
  test -f ~/$CONFIGFILE && mv ~/$CONFIGFILE ~/${CONFIGFILE}.old
  ln -sf $CONFIGFILE ~/$CONFIGFILE
done
