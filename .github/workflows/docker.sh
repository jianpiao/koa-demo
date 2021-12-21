# 容器名称
containerName="koa-docker"
# 镜像名称
imageName="smallzip7799/koa-github-action"

# 拉取镜像
docker pull smallzip7799/koa-github-action

# 根据容器名称，检查容器是否存在
docker inspect -f '{{.Name}}' koa-docker
if [ $? == 0 ] ;then
    echo "docker exist"
    # 容器存在则先停掉
    docker container stop koa-docker
    # 移除容器
    docker container rm koa-docker
    # 移除镜像
    docker images remove smallzip7799/koa-github-action
else
    echo "docker don't exist"
fi

# 运行镜像容器
docker run -d -p 8888:3010 --name koa-docker smallzip7799/koa-github-action