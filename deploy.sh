sudo /opt/google-cloud-sdk/bin/gcloud docker -- push asia.gcr.io/${PROJECT_NAME}/hello
sudo chown -R ubuntu:ubuntu /home/ubuntu/.kube
sudo chown -R ubuntu:ubuntu /home/ubuntu/.config

gcloud container clusters get-credentials cluster-1 --zone asia-east1-a --project zzak-gce
gcloud config set container/cluster cluster-1

kubectl create -f k8s.yaml --record

kubectl patch deployment hello-deployment -p '{"spec":{"template":{"spec":{"containers":[{"name":"deployment","image":"asia.gcr.io/'${PROJECT_NAME}'/hello:'"${CIRCLE_SHA1}"'"}]}}}}'
