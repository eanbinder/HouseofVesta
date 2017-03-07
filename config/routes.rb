Rails.application.routes.draw do
    get 'home/index'
    root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :sources
    match 'tagged' => 'posts#tagged', :via => [:get], :as => 'tagged'
    resources :tags, only: [:index, :show]
end
