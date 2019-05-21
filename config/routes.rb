Rails.application.routes.draw do
  resources :boards do
    resources :lists, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
