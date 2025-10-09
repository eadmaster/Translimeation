#!/bin/bash

# gfx patching script using sfk https://stahlworks.com/dev/index.php?tool=sfk

export GFX_PATH=gfx
export PATCHED_IMAGE_FILE="test.gba"
#export SFK_COLORS=


# turn a file into an hex string
file2hexstr() { sfk hexdump -raw "$1" ; }

# binary file search & replace
file_patch() { sfk replace $1 -binary /$2/$3/ -yes -firsthit ; }


# replace degree sign -> apostrophe in the main font
file_patch "$PATCHED_IMAGE_FILE" $(file2hexstr ${GFX_PATH}/apostrophe_orig.bin) $(file2hexstr ${GFX_PATH}/apostrophe_repl.bin)
