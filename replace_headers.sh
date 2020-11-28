IFS=$'\n'
outdir="./replaced_headers"
for filename in  $1; do
#$(find ./  -maxdepth 3  -path "$outdir" -prune -false -o -wholename "$1")

            file="$(basename -- "$filename")"
            s="${file%.*}"
            echo "-------"
            echo "Working on: $filename"

                if [ ! -d "$outdir" ]; then
                mkdir "$outdir"
                fi
				
            awk -F , -f replace.awk $2 "$filename" > "$outdir/$file"


done
