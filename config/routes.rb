Rails.application.routes.draw do
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/show'
  get 'books/edit'
  #上4つはresources :booksで一括処理できたはず
  root :to => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
