#!/bin/bash

MAXIMUM_JPG_SIZE=250
PNG_OPTIMIZATION_LEVEL=2
hugo --gc --minify --buildDrafts=false

if hash exiftool 2>/dev/null; then
	# remove exif data on all images in new_images
	exiftool -r -all= -ext jpg -ext gif -ext png public
else
	echo "Install perl-image-exiftool to optimize images"
fi

THREADS=$(nproc)

optimize_jpeg() {
    mogrify -resize '1400>' $1
	jpegoptim --strip-all --size=$MAXIMUM_JPG_SIZE $1
}
if hash jpegoptim 2>/dev/null; then
	(
	for image in $(find public -regextype posix-extended -iregex ".*\.(jpeg|jpg)"); do
		# Every THREADSth job, stop and wait for everything
		# to complete.
		if (( i % THREADS == 0 )); then
			wait
		fi
		((i++))
		optimize_jpeg $image &
	done;
	)
else
	echo "Install jpegoptim to optimize JPEG images"
fi

optimize_png() {
    mogrify -resize '1400>' $1
	optipng -clobber -strip all -o $PNG_OPTIMIZATION_LEVEL $1
}
if hash optipng 2>/dev/null; then
	for image in $(find public -regextype posix-extended -iregex ".*\.(png)"); do
		# Every THREADSth job, stop and wait for everything
		# to complete.
		if (( i % THREADS == 0 )); then
			wait
		fi
		((i++))
		optimize_png $image &
	done;
else
	echo "Install optipng to optimize PNG images"
fi