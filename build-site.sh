bundle exec jekyll build
cp -R _site/ ~/Documents/Github/temp
git checkout gh-pages
rm -R ./
cp -R ~/Documents/Github/temp/ ./