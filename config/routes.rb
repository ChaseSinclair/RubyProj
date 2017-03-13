Rails.application.routes.draw do

  resources :video_games, :path => "videogames"
  
  resources :movies
  # Override the underscored path Ex: http://localhost:3000/blogposts instead of http://localhost:3000/blog_posts
  resources :blog_posts, :path => "blogposts"

  resources :teams, only: [:index, :show]

  resources :players, only: [:index]

  resources :home, only: [:index]

  resources :games, only: [:index, :show]

  # Allow routes such as http://localhost:3000/hello_rails/p/1 to work
  #get ':title/p/:id' => "blog_posts#show", :id => /[0-9]+/

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
