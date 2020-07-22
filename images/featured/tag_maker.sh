ls *.jpg > img_filenames.txt

while IFS= read -r line
do
  	cat >> ready_tags.txt << EOF



			  <li>
			    <a title="" href="images/X/${line}"><img src="images/X/thumbs/${line}"  loading="lazy"></a>
			  </li>

			  <a class="swipebox" title="" href="images/featured/hillbomb2020-21.jpg">
						<img src="images/featured/thumbs/hillbomb2020-21thumb.jpg" alt="" >
					</a>

  		

EOF
done < img_filenames.txt



# <ul>
# 			  <li>
# 			    <img>
# 			  </li>
# 			  <!-- ... -->
# 			  <li>
# 			    <img>
# 			  </li>
# 			  <li></li>
# 			</ul>