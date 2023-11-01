

## Download all repo of a github account

$username=jdoe
curl -s 'https://api.github.com/users/$username/repos?page=1&per_page=100' | grep \"clone_url\" | awk '{print $2}' | sed -e 's/"//g' -e 's/,//g' | xargs -n1 git clone
