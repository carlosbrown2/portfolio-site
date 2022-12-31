bundle exec jekyll build
cp -R _site/ ~/Documents/Github/temp
git checkout gh-pages
cp -R ~/Documents/Github/temp .