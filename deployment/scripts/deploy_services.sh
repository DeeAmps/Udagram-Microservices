export POSTGRESS_USERNAME=udacity_cloud
export POSTGRESS_PASSWORD=H3ll0w0rld!123
export POSTGRESS_HOST=udacity-cloud-db.cwmheorteivg.us-east-2.rds.amazonaws.com
export POSTGRESS_DB=udacity_cloud
export AWS_REGION=us-east-2
export AWS_BUCKET=udagram-dee-dev
export AWS_PROFILE=default
export JWTSECRET=n1293uj123uh123u9u123bh12389u132h

kubectl apply --kubeconfig=udagram-kubeconfig -f ../k8s/env-configmap.yaml
kubectl apply --kubeconfig=udagram-kubeconfig -f ../k8s/env-secret.yaml
kubectl apply --kubeconfig=udagram-kubeconfig -f ../k8s/aws-secret.yaml

kubectl apply --kubeconfig=udagram-kubeconfig -f ../k8s/backend-feed-deployment.yaml
kubectl apply --kubeconfig=udagram-kubeconfig -f ../k8s/backend-user-deployment.yaml
kubectl apply --kubeconfig=udagram-kubeconfig -f ../k8s/reverseproxy-deployment.yaml
kubectl apply --kubeconfig=udagram-kubeconfig -f ../k8s/frontend-deployment.yaml

kubectl apply --kubeconfig=udagram-kubeconfig -f ../k8s/backend-feed-service.yaml
kubectl apply --kubeconfig=udagram-kubeconfig -f ../k8s/backend-user-service.yaml
kubectl apply --kubeconfig=udagram-kubeconfig -f ../k8s/reverseproxy-service.yaml
kubectl apply --kubeconfig=udagram-kubeconfig -f ../k8s/frontend-service.yaml