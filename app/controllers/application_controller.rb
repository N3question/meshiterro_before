class ApplicationController < ActionController::Base
 # 全てのコントローラに対する処理を行える権限を持つ
 
 ## ログイン機能の実装　=>ストロングパラメータと同様の機能
  # device利用の機能（ユーザー登録、ログイン認証など）が使われる前に configure_permitted_parametersメゾット が実行
  # configure_per...のメゾットでは、devise_parameter_sanitizer.permitメゾットを使うことで
  # ユーザー登録(sign_up)の際に、ユーザー名(name)のデータ操作を許可している
 ## NEXT ログアウト機能の実装　Go_to app/views/layouts/application.html.erb
 before_action :configure_permitted_parameters, if: :devise_controller?
 
   # 
 
 protected
 
 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
 end
end
