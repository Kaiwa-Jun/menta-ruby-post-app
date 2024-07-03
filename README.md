# 課題の進め方

ここからは実践に近い手順で学習を進めていきます

今回はX（旧Twitter）のような投稿アプリを作成します

課題1から課題23までを順にクリアしていくと完成する想定です

## 環境構築

### リポジトリをforkする
<img width="1427" alt="スクリーンショット 2024-07-03 10 19 21" src="https://github.com/Kaiwa-Jun/menta-ruby-post-app/assets/76391902/ee8523e8-e4f4-47ad-9aa8-7e175acbd939">
画面右上の「Fork」をクリックします

<img width="1429" alt="スクリーンショット 2024-07-03 10 24 16" src="https://github.com/Kaiwa-Jun/menta-ruby-post-app/assets/76391902/c2af1426-9262-49ea-ba8e-d4db4ceeeab2">
「Create a new fork」画面が表示されます。以下項目を適宜入力・選択し、「Create fork」をクリックして下さい

| 項目 | 概要 |
|------|------|
| Owner | リポジトリの所有者を選択します。デフォルトでは自分自身のアカウント名が表示されているので、そのままでかまいません。 |
| Repository name | フォークしたリポジトリの名前を付けます。デフォルトで表示されているのは、フォーク元のリポジトリ名です。特に問題なければそのままでもかまいません。 |
| Description | フォークに関する説明を任意で入力します。デフォルトで表示されているのは、フォーク元の説明です。特に問題なければそのままでもかまいません。 |
| Copy the main branch only | このチェックを外すと全てのブランチがコピーされます。 今回はチェックを外してください。 |

## forkしたリポジトリをcloneする

フォークしたリポジトリを、ローカルのPCへクローン（コピー）して編集できるようにしましょう
<img width="1428" alt="スクリーンショット 2024-07-03 10 34 46" src="https://github.com/Kaiwa-Jun/menta-ruby-post-app/assets/76391902/29e3ddd2-c435-49e3-8202-424155a1114c">

フォークしたリポジトリで`Code`をクリック

リポジトリのURLが表示されるので、URL欄の横にあるコピーボタンをクリック

ターミナル（端末）などを開いて、リポジトリを配置したい階層までcdコマンドで移動する

リポジトリをcloneする

```
git clone 【クローン先のURL】

// 多分下記のようになると思いますので、実行してください
git clone git@github.com:Kaiwa-Jun/menta-ruby-post-app.git
```

## 完成状態を確認する

cloneができたらまずは完成状態を確認しましょう！

```
cd menta-ruby-post-app
git branch // developブランチであることを確認
docker-compose build
docker-compose up
```

ブラウザで`http://localhost:3001/`にアクセスする

エラー画面が表示されますが、`Create database`をクリックすればOKです
<img width="1428" alt="スクリーンショット 2024-07-03 9 15 18" src="https://github.com/Kaiwa-Jun/menta-ruby-post-app/assets/76391902/992fc566-496e-42f3-a89c-8dfc3af60022">

画面の確認(完成品)

どんな機能あるかの説明


## ブランチを切り替えて課題をスタートする

```
git branch
* develop
  feature1/skip-unnecessary-files
  feature2/setup-routes
  .
  .
  .

# 課題１（feature1/skip-unnecessary-files）にブランチを切り替える例
git checkout feature1/skip-unnecessary-files

# feature1/skip-unnecessary-filesに切り替わっているか確認
git branch
  develop
* feature1/skip-unnecessary-files
```

各課題の番号ごとにREADME.mdがあります。課題1の場合はREADME1.mdです

README1.mdの指示（チェックボックス）を実装していく

実装完了したら、Pull Requestを作成する

OKであれば、私の方でdevelopブランチへマージします


## マージされたらローカルのdevelopブランチを最新にしましょう

実際の開発現場では、`開発 → PR → developへのマージ`が各開発者ごとに行われます

なので、他の開発者が行ったコードの変更がリモートのdevelopブランチに集約されていきます

リモートのdevelopブランチとローカルのdevelopブランチに差異が出てしまうため、定期的にローカルのdevelopを最新にしましょう

```
git checkout develop
git pull
```