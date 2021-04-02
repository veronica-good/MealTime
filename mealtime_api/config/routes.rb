Rails.application.routes.draw do

  get 'welcome/contact_us'
  get 'welcome/about'
  get 'welcome/careers'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'foods#index'

  
  resources :foods, only: [:show, :index] do
    resources :favourites, shallow: true, only:[:create, :destroy]
    get :favoured, on: :collection
    resources :shopping_carts, shallow: true, only:[:create, :destroy, :update]
    get :cart, on: :collection
  end

  resources :categories, only: [:index, :show]
  get '/search' => 'categories#search', :as => 'search_page'
  get '/filter' => 'categories#filter', :as => 'filter_page'
  resources :users, only:[:new, :create]
  resource :session, only:[:new, :create, :destroy]
  resources :plans, only:[:create, :index, :show] do
    resources :lists, shallow: true, only:[:create, :show ]
  end
  resources :food_plans, only:[:create]

  # API routes
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :foods, only: [:show, :index]
      resource :session, only: [:create, :destroy]
      get('/current_user', to: 'sessions#get_current_user')
      resources :users, only:[:create]
    end
  end
  
end
