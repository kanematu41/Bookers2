Rails.application.routes.draw do

	root 'books#top'
	get 'home/about' => 'users#top'

    devise_for :users
    resources :users, only: [:show, :edit, :update, :index]

    resources :books, only: [:index, :show, :edit, :create, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
