docker build -t nano .
$id = docker run -d -p 80:80 nano
$ip = docker inspect --format="{{.NetworkSettings.Networks.nat.IPAddress}}" $id
curl $ip
docker rm -f $id