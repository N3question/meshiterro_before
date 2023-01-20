class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  # devise の後ろに :（コロン）で始まる部分が devise の機能名
  # 今回は実装しない機能があるが、デフォルトなのでこのまま進める。
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ## 1:Nの関係性をモデルに実装
  # UserモデルにPostImage モデルを関連付ける
    # User モデル=>1 PostImage モデル=>N
      # Railsのルールに従い、モデル内に記載する => モデル間の関係性を機能として持たせることができる
        # アソシエーションという
      # dependent: :destroyはユーザー削除と同時に投稿を削除する記述
        # ほとんどの場合実装
      # NEXT PostImage モデルに User モデルを関連付ける
        # Go_to app/models/post_image.rb
  has_many :post_images, dependent: :destroy
         
end
