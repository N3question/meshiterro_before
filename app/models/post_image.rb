class PostImage < ApplicationRecord
  
  has_one_attached :image # 追加, ActiveStorageを使って画像を持たせる
  
end
