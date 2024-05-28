# loop all files in directory bash

# then check the first line if = "<!-- //!STARTERCONF = REMOVE THIS FILE -->" or "//!STARTERCONF = REMOVE THIS FILE"
for file in find . -path "./node_modules/*" -prune -o \( -name '*.js' -or -name '*.ts' -or -name '*.jsx' -or -name '*.tsx' -or -name '*.md' \)  ; do
  if [ -f "$file" ] ; then
  echo $file
    if [[ "$(head -n1 "$file")" == *"//!STARTERCONF = REMOVE THIS FILE"* ]]; then
      echo "Found it!"
      echo "Removing $file"
    fi
    # if [ "$(head -n1 "$file")" = "<!-- //!STARTERCONF = REMOVE THIS FILE -->"  ] ; then
    #   echo "Removing $file"
    #   rm "$file"
    # fi
  fi
done


find . -path "./node_modules/*" -prune \( -iregex '.*\.\(ts\|tsx\|js\|jsx\)$' \)