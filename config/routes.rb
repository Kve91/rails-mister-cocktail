Rails.application.routes.draw do
  # =beginget 'doses/create', to: 'doses#create', as: :create
  # get 'doses/destroy', to: 'doses#destroy', as: :destroy
  # get 'doses/new', to: 'doses#new', as: :new
  # get 'cocktails/index', to: 'cocktails#index', as: :index
  # get 'cocktails/show', to: 'cocktails#show', as: :show
  # get 'cocktails/edit', to: 'cocktails#edit', as: :edit
  # get 'cocktails/create', to:'cocktails#create', as: :create
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html=end
   root "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
