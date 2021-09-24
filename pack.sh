helm package charts/$1/$2
mv $1-$2.tgz ../devops-charts-pack-and-index/
cd ../devops-charts-pack-and-index
helm repo index .
git add .
git push
