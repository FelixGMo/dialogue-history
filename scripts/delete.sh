# deletes the locally installed files of the mod

source "$(git rev-parse --show-toplevel)/scripts/paths.sh"

rm -rf "${paths[ROOT]}/redscript"
rm -rf "${paths[ROOT]}/input"
