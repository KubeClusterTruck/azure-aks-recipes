# Create a namespace for your ingress resources, assumes $1 are additional helm options
kubectl create namespace ingress-external
HELM_OPT=$1; export HELM_OPT

# Use Helm to deploy an NGINX ingress controller
helm install stable/nginx-ingress --namespace ingress-external --set controller.replicaCount=2 $HELM_OPT