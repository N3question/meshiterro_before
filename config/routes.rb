Rails.application.routes.draw do
  # devise を使用する際に URL として users を含むことを示す。
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 get 'top'=>'homes#top'
end
