# FROM：使用するイメージ、バージョン
FROM ruby:3.1
# 公式→https://hub.docker.com/_/ruby

# ruby3.1のイメージがBundler version 2.3.7で失敗するので、gemのバージョンを追記
ARG RUBYGEMS_VERSION=3.3.20

# RUN：任意のコマンド実行
RUN mkdir /app

# Node.jsとnpmをインストール
RUN apt-get update -qq && apt-get install -y nodejs npm

# WORKDIR：作業ディレクトリを指定
WORKDIR /app

# Gemfileを先にコピーしてbundle install
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN gem update --system ${RUBYGEMS_VERSION} && bundle install

# 残りのファイルをコピー
COPY . /app

# コンテナ起動時に実行させるスクリプトを追加
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3001

# CMD:コンテナ実行時、デフォルトで実行したいコマンド
# Rails サーバ起動
CMD ["rails", "server", "-b", "0.0.0.0"]
