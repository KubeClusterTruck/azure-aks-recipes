# Create a namespace for your ingress resources
kubectl create namespace ingress-external

# Use Helm to deploy an NGINX ingress controller
helm install stable/nginx-ingress --namespace ingress-external --set controller.replicaCount=2