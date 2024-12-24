# backs up all files into `backup`

source "$(git rev-parse --show-toplevel)/scripts/paths.sh"

argv="$@"

if [ ! -d "${paths[BACKUP]}" ]; then
  mkdir -p "${paths[BACKUP]}"
fi

files=$(ls -1 "${paths[BACKUP]}" | wc -l)

if [ -z "$argv" ]; then
  name="$files"
else
  name="$argv"
fi

source "${paths[ROOT]}/scripts/import.sh"
mkdir -p "${paths[BACKUP]}/$name"
cd "${paths[BACKUP]}/$name"

cp -r "${paths[ROOT]}/redscript/" "redscript"
cp -r "${paths[ROOT]}/input" "input"

# Iterate through all files in the current directory recursively
find . -type f | while IFS= read -r file; do
  # Extract the directory and filename without extension
  dir=$(dirname "$file")
  base=$(basename "$file" | sed 's/\.[^.]*$//')

  # Construct the new filename with .txt extension
  new_file="$dir/$base.swift"

  # Rename the file
  mv "$file" "$new_file"
done