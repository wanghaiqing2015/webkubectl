
docker build -t webkubectl:latest $PWD

docker login --username=krman_1@163.com registry.cn-hangzhou.aliyuncs.com

docker tag webkubectl:latest registry.cn-hangzhou.aliyuncs.com/wanghaiqing/webkubectl:latest
docker push registry.cn-hangzhou.aliyuncs.com/wanghaiqing/webkubectl:latest

kubectl delete -f webkubectl.yaml
kubectl apply  -f webkubectl.yaml
 
exit 0
 
docker run -d --name="webkubectl" -p 38080:18080 --privileged registry.cn-hangzhou.aliyuncs.com/wanghaiqing/webkubectl:latest

http://103.45.112.173:38080/


