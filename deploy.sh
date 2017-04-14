sudo /opt/google-cloud-sdk/bin/gcloud docker -- push asia.gcr.io/${PROJECT_NAME}/hello
sudo chown -R ubuntu:ubuntu /home/ubuntu/.kube
sudo chown -R ubuntu:ubuntu /home/ubuntu/.config

kubectl patch deployment docker-hello-google -p '{"spec":{"template":{"spec":{"containers":[{"name":"docker-hello-google","image":"asia.gcr.io/'${PROJECT_NAME}'/hello:'"${CIRCLE_SHA1}"'"}]}}}}'
