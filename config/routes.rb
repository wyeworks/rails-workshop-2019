Rails.application.routes.draw do
  resources :cards
  resources :boards do
    resources :lists, only: [:index], shallow: true do
      resources :cards
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
