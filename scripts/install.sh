# installs the local mod files into the game

source "$(git rev-parse --show-toplevel)/scripts/paths.sh"

# Import the mod if it hasn't been imported yet.
if [ ! -d "${paths[ROOT]}/redscript" ] || [ ! -e "${paths[ROOT]}/input/${paths[NAME]}.xml" ]; then
  source "${paths[ROOT]}/scripts/import.sh"
fi

source "${paths[ROOT]}/scripts/uninstall.sh"
cp -r "${paths[ROOT]}/redscript" "${paths[CYBERPUNK_ROOT]}/${paths[REDSCRIPT_PATH]}/${paths[NAME]}/" 
cp -r "${paths[ROOT]}/input/${paths[NAME]}.xml" "${paths[CYBERPUNK_ROOT]}/${paths[INPUT_PATH]}/"