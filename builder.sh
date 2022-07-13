cd $WORKSPACE
echo $WORKSPACE

export GOPROXY=https://goproxy.io

go mod tidy
# 打印依赖，部署成功后查看版本依赖是否如预期
cat ./go.mod

# linux环境编译
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o main
# 构建docker镜像，项目中需要在当前目录下有dockerfile，否则构建失败
docker build -t go-first .
rm -rf main
docker rm go-first-test -f
docker run --name go-first-test -p 8010:8010 -d go-first