echo "Enter location of the existing git repo: "
read location

cd ${location}

echo "Enter repo origin url: "
read url

git init
git add .
git commit -m "New push to github"
git remote add origin "${url}"
git branch -M main
git push -u origin main

