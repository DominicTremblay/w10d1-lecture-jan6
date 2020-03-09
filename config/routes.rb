Rails.application.routes.draw do
  get 'reviews/create'
  get 'reviews/destroy'

  resources :movies, except: [:edit, :update, :destroy] do 
    resources :reviews, only: [:index, :create, :destroy]
  end

end
