

export TARGET_FILENAME="Slime Morimori Dragon Quest - Shougeki no Shippo Dan (English)"

# inject script from after-translate2.txt -> create test.gba
sbcl --script slurp.lisp 

echo "replacing gfx..."
source _patch_gfx.sh

echo "patching menu..."
#abcde --multi-table-files -cm abcde::Atlas test.gba atlas_commands.txt  # error with table dups values
wine atlas.exe test.gba atlas_commands.txt 

# create ips patch -> test.ips
mv test.gba "${TARGET_FILENAME}.gba"
#ucon64 --nbak --mki=slime_original.gba "${TARGET_FILENAME}.gba"
