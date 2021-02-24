Rails.application.routes.draw do

  root to: 'home#welcome' #difine a rota do / da nossa aplicação. esse é o ponto inicial da app
  resources :tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
