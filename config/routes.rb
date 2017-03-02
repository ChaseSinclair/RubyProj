Rails.application.routes.draw do

  # Override the underscored path Ex: http://localhost:3000/blogposts instead of http://localhost:3000/blog_posts
  resources :blog_posts, :path => "blogposts"

  get 'teams', to: 'teams#index'

  get 'players', to: 'players#index'

  get 'home', to: 'home#index'

  # Allow routes such as http://localhost:3000/hello_rails/p/1 to work
  get ':title/p/:id' => "blog_posts#show", :id => /[0-9]+/

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
