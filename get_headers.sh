IFS=$'\n'
outdir="./replaced_headers"
for filename in  $1 ; do 
#$(find ./  -maxdepth 3  -path "$outdir" -prune -false -o -wholename "$1")
    echo "working on: $filename"
	sed '2q;d' "$filename" | awk -F , '{for (i=1;i<=NF;i++) print $i}' >> all_headers.txt
done

sort all_headers.txt | uniq > "$2"
