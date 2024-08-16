base=`dirname $(readlink -f $0)`

find $base/content -type f > $base/cache
IN=lovinghosethus.com
while IFS= read -r line; do
  A=`cat "$line" | grep $IN`
  NUM=$(((NUM+1)))
  if [ "$A" ]; then
  echo "- $line"
  fi
done < $base/cache

