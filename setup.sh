minikube start --vm-driver=virtualbox
eval $(minikube docker-env)
minikube addons enable metallb
docker build -t nginx_image     srcs/nginx
docker build -t wordpress_image srcs/wordpress
docker build -t mysql_image		srcs/MySQL
docker build -t php_image		srcs/php
docker build -t ftps_image		srcs/ftps
docker build -t grafana_image   srcs/grafana
docker build -t influxdb_image	srcs/influxdb
docker build -t telegraf_image	srcs/telegraf
docker pull metallb/speaker:v0.8.2
docker pull metallb/controller:v0.8.2
kubectl apply -f srcs/configmap.yaml
kubectl apply -f srcs/nginx/nginx.yaml
kubectl apply -f srcs/wordpress/wordpress.yaml
kubectl apply -f srcs/MySQL/MySQL.yaml
kubectl apply -f srcs/php/php.yaml
kubectl apply -f srcs/ftps/ftps.yaml
kubectl apply -f srcs/grafana/grafana.yaml
kubectl apply -f srcs/influxdb/influxdb.yaml
kubectl apply -f srcs/telegraf/telegraf.yaml
kubectl get pods
kubectl get svc
minikube dashboard                                                                                                                     