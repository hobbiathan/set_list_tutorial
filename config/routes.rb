Rails.application.routes.draw do

  get '/songs', to: 'songs#index'
  get '/songs/:id', to: 'songs#show'
  get '/artists', to: 'artists#index'
  get '/artists/new', to: 'artists#new'
  get '/artists/:artist_id/songs', to: 'artist_songs#index'

  post '/artists', to: 'artists#create'

end
