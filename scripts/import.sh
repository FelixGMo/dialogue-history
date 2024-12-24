# copies the mod files from the cyberpunk directory to the mod directory

source "$(git rev-parse --show-toplevel)/scripts/paths.sh"

rm -rf "${paths[ROOT]}/redscript"
rm -rf "${paths[ROOT]}/input"
mkdir "${paths[ROOT]}/input"

cp -r "${paths[CYBERPUNK_ROOT]}/${paths[REDSCRIPT_PATH]}/${paths[NAME]}/" "${paths[ROOT]}/redscript"
cp -r "${paths[CYBERPUNK_ROOT]}/${paths[INPUT_PATH]}/${paths[NAME]}.xml" "${paths[ROOT]}/input"