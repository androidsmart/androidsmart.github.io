base=`dirname $(readlink -f $0)`

find $base/content -type f > $base/cache
IN="author : wahyu6070"
while IFS= read -r line; do
  A=`cat "$line" | grep "$IN"`
  
  if [ "$A" ]; then
  NUM=$(((NUM+1)))
  echo "${NUM}. $line"
  fi
done < $base/cache

