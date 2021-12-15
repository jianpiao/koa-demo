# 构建镜像
docker build -t koa-demo .

# 查看镜像
docker imaegs

# 运行镜像，并开启8888端口
docker run -d -p 8888:3010 koa-demo  