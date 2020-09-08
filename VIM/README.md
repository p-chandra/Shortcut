Nothing Here yet


for repo in $(curl -s -iH "Authorization: token ${ACCESS_TOKEN}" https://api.github.com/orgs/${ORG_NAME}/repos?per_page=200 | grep ssh_url | rev | cut -d'"' -f2 | rev);
do git clone $repo;
done


for line in $(curl https://api.github.com/orgs/threatexpress/repos?access_token=<EnterTokenHere> | grep -o "git@github.com:threatexpress/[^ ,\"]\+");do git clone $line;done
