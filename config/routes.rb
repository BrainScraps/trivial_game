TrivialGame::Application.routes.draw do

  post 'start_game' => "home#start_game", :as => "start_game"
  root :to => "home#index"
end
