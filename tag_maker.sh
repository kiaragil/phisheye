ls *.jpg > img_filenames.txt

while IFS= read -r line
do
  	cat >> ready_tags.txt << EOF

  		<a class="swipebox" title="" href="images/maui/${line}"><img src="images/maui/thumbs/${line}"></a>

EOF
done < img_filenames.txt
