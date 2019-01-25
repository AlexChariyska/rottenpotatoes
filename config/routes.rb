Rails.application.routes.draw do
 resources :movies
 root :to => redirect('/movies')
 
 get '/movies/:id/similar_movies' => 'movies#search_similar_movies', 
 as: :search_similar_movies
end