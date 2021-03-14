# Ruby on Rails
# Ruby version: latest
# rails version: latest

FROM ruby:2.7.2

RUN apt-get update -qq && \
    apt-get install -y sqlite3 \
                       libsqlite3-dev \
                       build-essential \
                       patch \
                       ruby-dev \
                       liblzma-dev \
                       nodejs \
                       npm

# Rubyの言語設定をutf-8に変更
RUN export RUBYOPT=-EUTF-8

# yarnを削除
RUN apt remove cmdtest yarn

# yarnのパッケージ情報を更新&インストール
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install yarn

# bundlerをインストール
RUN gem install bundler

# working directory 作成
RUN mkdir /apps
WORKDIR /apps

# rails serverの起動情報が残ってしまうことがある
# container を立ち上げるたびに削除するスクリプト
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

# bundle install
COPY Gemfile /apps/Gemfile
COPY Gemfile.lock /apps/Gemfile.lock

RUN bundle install

# container起動時にentrypoint.shを走らせる
ENTRYPOINT ["entrypoint.sh"]

# port 3000を公開
EXPOSE 3000

# 全てのファイルをimageに突っ込む
COPY . /apps
