TrivialGame::Application.routes.draw do

  post 'start_game' => "home#start_game", :as => "start_game"

  post 'handle_guess' => "home#handle_guess", :as => "handle_guess"

  root :to => "home#index"
end
