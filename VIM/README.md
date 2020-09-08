Nothing Here yet


for repo in $(curl -s -iH "Authorization: token ${ACCESS_TOKEN}" https://api.github.com/orgs/${ORG_NAME}/repos?per_page=200 | grep ssh_url | rev | cut -d'"' -f2 | rev);
do git clone $repo;
done
