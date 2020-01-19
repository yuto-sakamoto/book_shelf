# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# book_shelf
book_shelf

## 環境構築手順
1. PJルートディレクトリで以下コマンドを実行する。
```
$ docker-compose up
```

## yarnのエラー
```
$ docker-compose run --rm app yarn install
# 再度起動する
$ docker-compose up
```

2. DBを作成する
```
$ docker-compose exec app rails db:setup
```


## 開発環境

メール認証確認のパス
```
$ rails routes
letter_opener_web    /letter_opener   LetterOpenerWeb::Engine
 ```
