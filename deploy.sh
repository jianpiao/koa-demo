# 容器名称
containerName="koa-docker"
# 镜像名称
imageName="smallzip7799/koa-github-action"

# 根据容器名称，检查容器是否存在
docker inspect -f '{{.Name}}' $containerName
if [ $? == 0 ] ;then
    echo "docker exist"
    # 容器存在则先停掉
    docker container stop $containerName
    # 移除容器
    docker container rm $containerName
else
    echo "docker don't exist"
fi

docker pull smallzip7799/koa-github-action
docker container stop koa-docker
docker container rm koa-docker
docker run -d -p 8888:3010 --name $containerName smallzip7799/koa-github-action