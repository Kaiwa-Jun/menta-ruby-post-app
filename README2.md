# step2: 画面遷移の設定

ブランチ名: `feature2/setup-routes`

## ゴール

- アプリケーションの基本的な画面遷移を設定し、各ページへのルーティングを実装する

## 学習できること

- Rails でのルーティングの設定方法
- 各コントローラーとビューの作成方法
- ルートとビューの関連付け

## 実装内容

1. Home コントローラーの作成
2. Users コントローラーの作成
3. Sessions コントローラーの作成
4. 各コントローラーに対応するビューの作成
5. routes.rb に基本的なルーティングを設定
6. 各ビューに簡易なリンクを作成し、画面遷移を確認する

## チェックリスト

- [ ] Home コントローラーの作成
  - `app/controllers/home_controller.rb` ファイルを作成し、`index`アクションを追加する
- [ ] Users コントローラーの作成
  - `app/controllers/users_controller.rb` ファイルを作成し、`new`アクションを追加する
- [ ] Sessions コントローラーの作成
  - `app/controllers/sessions_controller.rb` ファイルを作成し、`new`アクションを追加する
- [ ] 各コントローラーに対応するビューの作成
  - `app/views/home/index.html.erb` ファイルを作成し、以下を実行する:
    - [ ] 「Sign Up | Login」リンクを作成すること
    - [ ] `Sign Up` リンクが `app/views/users/new.html.erb` に遷移すること
    - [ ] `Login` リンクが `app/views/sessions/new.html.erb` に遷移すること
  - `app/views/users/new.html.erb` ファイルを作成し、以下を実行する:
    - [ ] 「Back to Home」リンクを作成すること
    - [ ] `Back to Home` リンクが `app/views/home/index.html.erb` に遷移すること
  - `app/views/sessions/new.html.erb` ファイルを作成し、以下を実行する:
    - [ ] 「Back to Home」リンクを作成すること
    - [ ] `Back to Home` リンクが `app/views/home/index.html.erb` に遷移すること
- [ ] routes.rb に基本的なルーティングを設定
  - `config/routes.rb` ファイルを開き、以下を実行する:
    - [ ] ルートパス `/` を `home#index` に設定すること
    - [ ] `users` リソースの `new` アクションに対応するルートを設定すること
    - [ ] `sessions` リソースの `new` アクションに対応するルートを設定すること
