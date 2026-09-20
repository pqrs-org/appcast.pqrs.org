#!/bin/sh

exec pandoc --from=gfm --to=html5 --wrap none "$@"
