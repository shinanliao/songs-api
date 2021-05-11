Rails.application.routes.draw do
  get "/songs" => "songs#index"
  post "/songs" => "songs#create"
  get "/songs/:id" => "songs#show"
  patch "/songs/:id" => "songs#update"
end
