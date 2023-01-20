class ApplicationController < ActionController::Base
 # 全てのコントローラに対する処理を行える権限を持つ
 
 ## ログイン機能の実装　=>ストロングパラメータと同様の機能
    # device利用の機能（ユーザー登録、ログイン認証など）が使われる前に configure_permitted_parametersメゾット が実行
    # configure_per...のメゾットでは、devise_parameter_sanitizer.permitメゾットを使うことで
    # ユーザー登録(sign_up)の際に、ユーザー名(name)のデータ操作を許可している
 ## NEXT ログアウト機能の実装　Go_to app/views/layouts/application.html.erb
 before_action :configure_permitted_parameters, if: :devise_controller?
 
  ## サインイン後の遷移先に設定
     # after_sign_in_path_for はDeviseが用意しているメゾット
     # サインイン後にどこに遷移するかを設定しているメゾット
       # Deviseのデフォルトはroot_pathになっている
  def after_sign_in_path_for(resourse)
    about_path
  end
  
  ## サインアウト後の遷移先を設定
     # after_sign_out_path_for はDeviseが用意しているメゾット
     # サインアウト後にどこに遷移するかを設定しているメゾット
     # NEXT 投稿機能の作成⑴ - modelの準備
       # $ rails g model PostImageを実行
         # 管理用マイグレーションファイルの作成
       # 
  def after_sign_out_path_for(resouse)
    about_path
  end
 
  protected
 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
