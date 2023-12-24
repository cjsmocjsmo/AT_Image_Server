for f in /home/charliepi/Pictures/ats_images/landscape/*.jpg; do
cwebp -q 95 -resize 1200 0 "$f" -o "${f%.jpg}.webp"
done
