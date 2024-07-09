# step5: データベースの設定（マイグレーションファイルの作成）

## ブランチ名: feature5/setup-database
    
## ゴール
    
アプリケーションのデータベースを設定し、テーブルを作成する
    
## 学習できること
    
- データベースマイグレーションの作成方法
- マイグレーションファイルの実行方法
    
## 実装内容
    
1. ユーザーテーブルのマイグレーションファイルを作成する
2. 投稿テーブルのマイグレーションファイルを作成する
3. マイグレーションを実行してテーブルを作成する
    
## チェックリスト
    
- [ ]  ユーザーテーブルのマイグレーションファイルの作成
    - 本来作成しますが、すでにsorceryの設定でusersテーブルを作成しているため省略
- [ ]  投稿テーブルのマイグレーションファイルの作成
    - CreatePostsという名前のマイグレーションファイルを作成し、以下のカラムと型を指定する
        - title: string
        - body: text
        - user: references
    - マイグレーションファイルを作成のコマンドは`docker-compose run web rails〜`を用いること

- [ ]  マイグレーションの実行
    - ターミナルで以下のコマンドを実行して、マイグレーションを適用する
    ```
    docker-compose run web rails db:migrate
    ```

### 以下に、生成されるマイグレーションファイルの例を示します

投稿テーブルのマイグレーションファイル例

```
# db/migrate/20240702123457_create_posts.rb
class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
```