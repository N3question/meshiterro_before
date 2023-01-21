class PostImagesController < ApplicationController

  ## newアクションの作成
    # 画像投稿の画面を表示するアクションメゾット
        # @post_image = PostImage.new
        # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成
  ## NEXT View
    # app/views/post_images に new.html.erb を作成
  def new
    @post_image = PostImage.new
  end
  
  ## 投稿データの保存
  ## createアクションの作成
    # 投稿データの保存にはストロングパラメータも必要なので同時に定義
        # ① 投稿するデータをPostImageモデルに紐づくデータとして保存する準備
            # shop_name, caption, imageなどが、@post_imageに格納 
        # ② PostImageに紐づくカラムの値の取得や逆に値を代入するなどの操作が可能
            # ある投稿のuser_idとしてcurrent_user.idの値を代入するという意味
                # current_user
                    # コードに記述するだけで、ログイン中のユーザーの情報を取得できる記述
                    # ヘルパーメゾットの一種
                    # deviseをインストールで使用可能
                    # Userモデルに紐づいたカラムの情報も取得できる
                        # current_user.name, current_user.emailなど最後を変更することで色々情報を取得できる　
        # ③ データをデータベースに保存するためのsaveメゾット
        # ④ リダイレクト先の指定
  ## NEXT Routingの追加 Go_to routes.rb
    # onlyの中に:createを追加
  def create
    @post_image = PostImage.new(post_image_params) # ①
    @post_image.user_id = current_user.id # ②
    @post_image.save # ③
    redirect_to post_images_path # ④
  end
  
  def index
  end

  def show
  end
  
  ## 投稿データのストロングパラメータ
  # createアクションの作成時に同時に定義
      # params
          # formから送られてくるデータはparamsの中に入っている
      # require
          # データの絞り込み。モデル名（:post_image）を指定する。
      # permit
          # 絞り込んだデータの中から、保存を許可するカラムの指定
  private
  
  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
  
end
