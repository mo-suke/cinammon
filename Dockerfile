# Ruby on Rails
# Ruby version: latest
# rails version: latest

FROM ruby:latest

RUN apt-get update -qq && \
    apt-get install -y sqlite3 \
                       libsqlite3-dev \
                       build-essential \
                       patch \
                       ruby-dev \
                       liblzma-dev \
                       nodejs

# bundlerをインストール
RUN gem install bundler

# working directory 作成
RUN mkdir /apps
WORKDIR /apps

# rails serverの起動情報が残ってしまうことがある
# container を立ち上げるたびに削除するスクリプト
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

# Gemfileを送る
COPY Gemfile /apps/Gemfile
COPY Gemfile.lock /apps/Gemfile.lock

# bundle install
RUN bundle install

# container起動時にentrypoint.shを走らせる
ENTRYPOINT ["entrypoint.sh"]

# port 3000を公開
EXPOSE 3000

# 言語設定をUTF-8に変更
ENV LANG C.UTF-8

# 全てのファイルをimageに突っ込む
COPY . /apps
