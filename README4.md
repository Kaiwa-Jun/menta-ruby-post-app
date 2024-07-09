# step4: 共通レイアウトの実装

## ブランチ名: feature4/setup-layout
    
## ゴール
    
ヘッダーやフッターを共通レイアウトとして実装する。
    
## 学習できること
- Railsのレイアウト機能を使って、共通のヘッダーとフッターを設定する方法
    
## 実装内容
    
1. 共通レイアウトファイルを作成する
2. ヘッダーとフッターを追加する
3. 各ページで共通レイアウトを使用する
    
# チェックリスト
    
- [ ]  共通レイアウトファイルを作成
    - 以下のHTMLを使用して、共通のヘッダーとフッターを追加する
    - ファイルは新規作成してください
    - どこのディレクトリに作成すべきか、どのようなファイル名であるべきかを考えてみてください

```
<!DOCTYPE html>
<html>
  <head>
    <title>MyApp</title>
    <%= csrf_meta_tags %>
    <%= csp_meta_tag %>
    <%= stylesheet_link_tag 'application', media: 'all' %>
    <%= javascript_include_tag 'application' %>
  </head>
  <body>
	  <!-- この部分は各ページで共通で表示されるヘッダーです -->
    <header>
      <nav>
        <!-- ここにホームへのリンクを追加してください %> -->
        <%= link_to 'Home', %>
        <!-- ここにサインアップページへのリンクを追加してください -->
        <%= link_to 'Sign Up', %>
        <!-- ここにログインページへのリンクを追加してください -->
        <%= link_to 'Login', %>
      </nav>
    </header>
    
    <!-- この部分に各ページのコンテンツが挿入されます -->
    <%= yield %>

		<!-- この部分は各ページで共通で表示されるフッターです -->
    <footer>
      <p>MyApp ©2024</p>
    </footer>
  </body>
</html>
```

- [ ]  画像の「Sign Up」「Login」を削除
<img width="1124" alt="スクリーンショット 2024-07-09 15 29 28" src="https://github.com/Kaiwa-Jun/menta-ruby-post-app/assets/76391902/b8c52b93-6efa-4f3a-8c27-5bf6f04da80c">
