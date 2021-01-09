docker container rm -f learn
$wd = $pwd.Path
docker run -d --privileged -v ${wd}:/data --name learn lujiawei/learn