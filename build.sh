docker build --no-cache -t kishor645/wazuh-agent:$1 .
docker push kishor645/wazuh-agent:$1
kubectl apply -f k8s/
