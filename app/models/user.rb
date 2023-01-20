class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  # devise の後ろに :（コロン）で始まる部分が devise の機能名
  # 今回は実装しない機能があるが、デフォルトなのでこのまま進める。
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
end
