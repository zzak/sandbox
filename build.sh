docker build -t asia.gcr.io/$PROJECT_NAME/hello:$CIRCLE_SHA1 .
docker tag asia.gcr.io/$PROJECT_NAME/hello:$CIRCLE_SHA1 asia.gcr.io/$PROJECT_NAME/hello:latest
