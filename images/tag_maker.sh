ls *.jpg > img_filenames.txt

while IFS= read -r line
do
  	cat >> ready_tags.txt << EOF
		<a target="_blank" data-lightbox="mygallery" href="images/${line}">
			<img data-src="images/${line}" alt="" >
		</a>

EOF
done < img_filenames.txt



# filename=file.txt
# for item in 'cat file.txt'; do


# 	echo ${item}
# done