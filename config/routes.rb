Rails.application.routes.draw do
  root 'lists#index'
  resources :lists do 
    resources :list_items, only: [:create, :show]
  end
  resources :list_items

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
