Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # devise を使用する際に URL として users を含むことを示す。
  devise_for :users
  root 'homes#top'
  get 'top'=>'homes#top'
  get 'homes/about'=>'homes#about' ,as:'about'
  
  ## 記述の変更
    # get 'postimages/new' # コントローラ作成時自動追加
    # get 'postimages/index' # コントローラ作成時自動追加
    # get 'postimages/show' # コントローラ作成時自動追加
  resources :post_images, only: [:new, :index, :show]
  
end
