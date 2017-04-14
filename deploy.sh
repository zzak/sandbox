sudo /opt/google-cloud-sdk/bin/gcloud docker -- push asia.gcr.io/${PROJECT_NAME}/hello
#sudo chown -R ubuntu:ubuntu /home/ubuntu/.kube
#sudo chown -R ubuntu:ubuntu /home/ubuntu/.config

/opt/google-cloud-sdk/bin/gcloud container clusters get-credentials cluster-1 --zone asia-east1-a --project zzak-gce
/opt/google-cloud-sdk/bin/gcloud config set container/cluster cluster-1

sudo kubectl create -f k8s.yaml --record --validate=false

sudo kubectl patch deployment hello-deployment -p '{"spec":{"template":{"spec":{"containers":[{"name":"deployment","image":"asia.gcr.io/'${PROJECT_NAME}'/hello:'"${CIRCLE_SHA1}"'"}]}}}}'
