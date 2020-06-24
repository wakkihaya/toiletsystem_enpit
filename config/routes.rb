Rails.application.routes.draw do
  resources :toilets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'map#top'

  get 'new', to: 'review#new'
  # post 'toilets/new'

  post 'post' => 'map#top'

end
