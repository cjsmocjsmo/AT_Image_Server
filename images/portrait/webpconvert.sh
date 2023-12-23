for f in /home/charliepi/Pictures/ats_images/portrait/*.jpg; do
cwebp -q 95 -resize 600 0 "$f" -o "${f%.jpg}.webp"
done
