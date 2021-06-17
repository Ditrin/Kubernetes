kubectl delete -f               srcs/nginx/nginx.yaml
kubectl delete -f               srcs/configmap.yaml
kubectl delete -f               srcs/wordpress/wordpress.yaml
kubectl delete -f               srcs/php/php.yaml
kubectl delete -f               srcs/ftps/ftps.yaml
kubectl delete -f               srcs/grafana/grafana.yaml
kubectl delete -f               srcs/influxdb/influxdb.yaml
kubectl delete -f               srcs/telegraf/telegraf.yaml
kubectl delete svc              wordpress
kubectl delete svc              nginx-svc
kubectl delete deployment       nginx-deployment
kubectl delete deployment       wordpress
kubectl delete deployment       sql-deployment
kubectl delete deployment       php-deployment
eval $(minikube docker-env)
docker build -t nginx_image     srcs/nginx
docker build -t wordpress_image srcs/wordpress
docker build -t mysql_image		srcs/MySQL
docker build -t php_image		srcs/php
docker build -t ftps_image		srcs/ftps
docker build -t grafana_image   srcs/grafana
docker build -t influxdb_image	srcs/influxdb
docker build -t telegraf_image	srcs/telegraf
kubectl apply -f srcs/configmap.yaml
kubectl apply -f srcs/nginx/nginx.yaml
kubectl apply -f srcs/wordpress/wordpress.yaml
kubectl apply -f srcs/MySQL/MySQL.yaml
kubectl apply -f srcs/php/php.yaml
kubectl apply -f srcs/ftps/ftps.yaml
kubectl apply -f srcs/grafana/grafana.yaml
kubectl apply -f srcs/influxdb/influxdb.yaml
kubectl apply -f srcs/telegraf/telegraf.yaml
