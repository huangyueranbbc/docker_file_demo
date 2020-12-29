## 使用Docker制作springboot镜像

1、生成SpringBoot项目  
2、增加dockerfile-maven-plugin打包插件  
3、创建Dockerfile文件  
4、上传至服务器  
5、进行打包安装镜像
mvn -T 10 install dockerfile:build  
6、查看镜像docker images  
```
REPOSITORY                                                        TAG                 IMAGE ID            CREATED             SIZE  
huangyr/docker_file_demo                                          latest              85a66605b290        7 minutes ago       531MB  
```  
7、运行镜像  
docker run  -p 8080:8080 -t huangyr/docker_file_demo    
8、上传镜像至远程仓库    
docker tag huangyr/docker_file_demo huangyr.hb.com/docker/docker_file_demo  
docker push huangyr.hb.com/docker/docker_file_demo  

