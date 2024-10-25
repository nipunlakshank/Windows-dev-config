echo "Enter your github account email: "
read email

echo "Enter your username username: "
read name

git config --global user.name "${name}"
git config --global user.email "${email}"

