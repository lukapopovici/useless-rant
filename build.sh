#! usr/bin/bash 

echo "Do you want to add an article? y/n"
read add_article
if [ "$add_article" = 'y' ] 
then
	python generate.py
fi

echo "Do you want to commit changes to blog? y/n"
read add_post
if [ "$add_post" = 'y' ] 
then
	git init -b master
	git add . 
	git config --global user.name 'lukapopovici'
	git config --global user.email 'lukapopovici@users.noreply.github.com'
	git commit -m "Most recent post/change"
	git remote add origin https://github.com/lukapopovici/useless-rumble
	git remote -v
	git push origin master
fi
echo "DONE"

