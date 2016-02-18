#!/bin/bash

LILY="/Applications/LilyPond.app/Contents/Resources/bin/lilypond -dno-point-and-click --pdf "
CWD=`pwd`

mkdir -p pdf

find scores -name *.ly -not -name info.ly -not -name src*.ly -print0 | while read -d $'\0' file
do
	f=`echo $file | grep -v 'src\,'`
	if [ -n "$f" ] 
	then
		info_file="`dirname "$file"`/info.ly"
		composer=`cat "$info_file" | sed -n 's/^info-composer[[:blank:]]*=[[:blank:]]*"\([^"]*\)"/\1/p'`
		if [ -z "$composer" ]; then continue; fi
		title=`cat "$info_file" | sed -n 's/^info-title[[:blank:]]*=[[:blank:]]*"\([^"]*\)"/\1/p'`
		
		in_file=`basename "$file"`
		dir=`dirname "$file"`

		out_fname=`echo "$composer-$title-$in_file" | sed s'/ /_/g'`
		out_fname="${out_fname%.ly}"
		out_fname_ext="${out_fname}.pdf"

		cd "$dir"

		echo "Output to $out_fname_ext"
		${LILY} -o "$out_fname" "$in_file" 1>/dev/null
		mv "$out_fname_ext" "../../pdf/$out_fname_ext"
		cd "$CWD"
	fi
done

cd "$CWD"

