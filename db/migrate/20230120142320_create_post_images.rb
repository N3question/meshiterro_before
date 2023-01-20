## 管理用テーブルのマグレーションファイル
  # テーブルの作成や変更を管理するファイル
    # post_imagesはテーブル名（必ず複数形・英小文字）
      # これに対してモデル名は PostImage（単数系・先頭英大文字）

## 必要に応じてカラムの追加を行う
  # t.データ型 :カラム名
  # 今回追加するカラム名（id,shop_name,caption,user_id）
    # 今回追加するデータ型（順にinteger,string,text,integer）
      # (注意点)id,created_at, updated_atの3つのカラムは自動で作成されているので追加しない
## カラム追加後
  # $ rails db:migrateを実行
## NEXT PostImageモデルにimageをもたせる　Go_to app/models/post_image.rb
class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|
      t.string :shop_name # 追加
      t.text :caption # 追加
      t.timestamps
    end
  end
end
