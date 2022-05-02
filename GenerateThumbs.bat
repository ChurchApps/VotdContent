for /l %%x in (1, 1, 366) do (
	cd v1/%%x
	mkdir 720p
	magick mogrify -resize 720x720 -quality 80 -path 720p 1x1.jpg
	magick mogrify -resize 1280x720 -quality 80 -path 720p 16x9.jpg
	magick mogrify -resize 720x1280 -quality 80 -path 720p 9x16.jpg
	mkdir thumbs
	magick mogrify -resize 270x270 -quality 50 -path thumbs 1x1.jpg
	magick mogrify -resize 480x270 -quality 50 -path thumbs 16x9.jpg
	magick mogrify -resize 270x480 -quality 50 -path thumbs 9x16.jpg
	cd ..
	cd ..
)
