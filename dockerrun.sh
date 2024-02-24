docker build  -t apigatewaybuilder .
docker run -v ./ :/usr/src/app --name android_apigateway_sdk_builder -d -it apigatewaybuilder /bin/bash
docker cp android_apigateway_sdk_builder:/app/aws-apigateway-api-sdk-0.1.1/target ./

docker stop android_apigateway_sdk_builder
docker rm android_apigateway_sdk_builder
docker rmi apigatewaybuilder



