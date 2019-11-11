Rails.application.routes.draw do
  get 'new', to: 'games#new', do: :new
  get 'score', to: 'games#score', do: :score
  post 'score', to: 'games#score', do: :score
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
