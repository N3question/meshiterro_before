class PostImage < ApplicationRecord
  
  ## ActiveStorageを使って画像を持たせる
  has_one_attached :image
  
  ## PostImage モデルに User モデルを関連付ける
    # 「N」側のモデルに記載
      # PostImage モデルに関連付けられるのは、1 つの User モデルだけ
      # 単数形の「user」になっている点に注意
  ## NEXT PostImageコントローラの作成
    # $ rails g controller コントローラ名 new index show edit
      # コントローラ名の後にアクション名をつけることができる
        # viewやRoutingが自動作成
      # データを操作するための７つのアクションを定義するのが一般的
        # 機能を実装するときは同じアクション名にする
          # new, create, index, show, edit, update, destroy
        # 必要に応じてそれ以外のアクションも用意することもある
  belongs_to :user
  
end
