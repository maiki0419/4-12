Rails.application.routes.draw do
  root to: 'homes#top'
  get '/books' => 'books#index', as: 'books'
  post '/books' => 'books#create'
  get '/books/:id' => 'books#show',as: 'book'
  get '/books/:id/edit' => 'books#edit',as: 'edit_book'
  patch 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#destroy'
end
