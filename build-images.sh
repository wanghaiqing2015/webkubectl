
docker build -t webkubectl:latest $PWD

docker login --username=krman_1@163.com registry.cn-hangzhou.aliyuncs.com

docker tag webkubectl:latest registry.cn-hangzhou.aliyuncs.com/wanghaiqing/webkubectl:latest
docker push registry.cn-hangzhou.aliyuncs.com/wanghaiqing/webkubectl:latest
 
exit 0
 