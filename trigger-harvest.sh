curl -u ${CIRCLE_TOKEN}: \
  -F revision=d5e294bade80052f5339864999f0785a4811a3a8 \
  -F config=@harvest-circle.yml \
  -F notify=false \
  https://circleci.com/api/v1/project/harvesthq/harvestapp/tree/use-memcache-in-circleci-for-debugging
