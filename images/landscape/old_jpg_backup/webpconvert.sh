for f in /media/charliepi/ATree/AlphaTree/AT_Image_Server/images/landscape/old_jpg_backup/*.jpg; do
cwebp -q 95 -resize 200 0 "$f" -o "${f%.jpg}_thumb.webp"
done
