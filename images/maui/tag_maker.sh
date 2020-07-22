ls *.jpg > img_filenames.txt

while IFS= read -r line
do
  	cat >> ready_tags.txt << EOF

  		<a class="swipebox" title="" href="images/X/${line}"><img src="images/X/thumbs/${line}"></a>

EOF
done < img_filenames.txt
