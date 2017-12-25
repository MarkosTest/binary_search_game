Rails.application.routes.draw do
  
  devise_for :users
  
  get root 'binary_game#welcome'

  get '/start', to: "binary_game#start"
end
