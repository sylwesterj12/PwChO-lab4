plik="$(free -m)"
plik1="$(stat pluto.sh)"

echo "Wolne miejsce:$plik   Data utworzenia: $plik1"  > info.log