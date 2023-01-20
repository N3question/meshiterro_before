Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # devise を使用する際に URL として users を含むことを示す。
  devise_for :users
  root 'homes#top'
  get 'top'=>'homes#top'
  get 'homes/about'=>'homes#about' ,as:'about'
end
