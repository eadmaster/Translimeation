

# inject script from after-translate2.txt -> create test.gba
sbcl --script slurp.lisp 

# create ips patch -> test.ips
#ucon64 --nbak --mki=slime_original.gba test.gba
#mv test.ips "Slime Morimori Dragon Quest - Shougeki no Shippo Dan (English).ips"