for file in *
do
	echo "Converting $file to 1400x progressive jpeg..."
	convert -strip -interlace Plane -gaussian-blur 0.05 -resize 1400x -quality 85 "$file" "$file"_1400xp.jpg
	echo "Converting $file to x550 progressive jpeg..."
	convert -strip -interlace Plane -gaussian-blur 0.05 -resize x550 -quality 85 "$file" "$file"_x550p.jpg
	echo "Converting $file to 640x progressive jpeg..."
	convert -strip -interlace Plane -gaussian-blur 0.05 -resize 640x -quality 85 "$file" "$file"_640x.jpg
	echo "Converting $file to 150x progressive jpeg..."
	convert -strip -interlace Plane -gaussian-blur 0.05 -resize 150x -quality 85 "$file" "$file"_150xp.jpg
	echo "Converting $file to 75x progressive jpeg..."
	convert -strip -interlace Plane -gaussian-blur 0.05 -resize 75x -quality 85 "$file" "$file"_75xp.jpg
done
