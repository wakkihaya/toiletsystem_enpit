Rails.application.routes.draw do
  resources :toilets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'map#top'

  get 'post', to: 'review#post'
  # post 'toilets/new'

  post 'toilets/post' => 'map#top'
  # submitを送信して戻るボタンがないのかな

end
