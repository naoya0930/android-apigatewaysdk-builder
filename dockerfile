# Dockerfile

# MavenとOpenJDK 11をベースにしたイメージを使用
FROM maven:3.6.3-openjdk-11

# 作業ディレクトリを設定
WORKDIR /app/aws-apigateway-api-sdk-0.1.1

# ホストのディレクトリをコピー
COPY . /app

# aws-apigateway-api-sdk-0.1.0ディレクトリに移動
WORKDIR /app/aws-apigateway-api-sdk-0.1.1

# Mavenを使用してプロジェクトをビルド
RUN mvn clean install

# Dockerイメージ実行時のデフォルトコマンドを設定
CMD ["mvn", "package"]

  
