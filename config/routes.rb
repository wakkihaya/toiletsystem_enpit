Rails.application.routes.draw do
  resources :toilets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'map#top'

  get 'toilets', to: 'toilets#index'

  post 'post' => 'map#top'

end
