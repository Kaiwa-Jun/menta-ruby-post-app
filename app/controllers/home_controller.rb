class HomeController < ApplicationController
  def index
    # render plain: "Home Page" を削除していることを確認してください
render "index"
  end
end
