Rails.application.routes.draw do
  root to: 'songs#index'
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]

  delete 'song/:id', 'song#destroy'
end
