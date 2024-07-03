# step3: Sorceryの導入

## ブランチ名: feature3/add-sorcery
    
## ゴール
    
Sorceryを導入し、ユーザー認証の基盤を構築する
    
## 学習できること
    
- 認証ライブラリSorceryの導入方法
- Gemのインストールと設定
    
## 実装内容
    
1. GemfileにSorceryを追加する
2. Sorceryをインストールする
3. Sorceryの設定ファイルを作成する
    
## チェックリスト
    
- [ ]  GemfileにSorceryを追加
     - `Gemfile` ファイルを開き、`gem 'sorcery'` を追加する
- [ ]  Sorceryをインストール
    - ターミナルで `docker-compose up` コマンドが実行された状態であることを確認する
    - ターミナルで `docker-compose run web bundle install` コマンドを実行する
- [ ]  Sorceryの設定ファイルを作成
    - ターミナルで `docker-compose run web rails generate sorcery:install` コマンドを実行する
    - 生成された `config/initializers/sorcery.rb` ファイルを確認する

## 確認
- [ ] Gemfile.lock に sorcery が追加されていること

- [ ] config/initializers/sorcery.rb ファイルが存在すること
