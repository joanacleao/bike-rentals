Rails.application.routes.draw do


  get 'bikes/index'

  get 'bikes/search', to: 'bikes#search'

  get 'bikes/new'

  get 'bikes/create'

  get 'bikes/edit'

  get 'bikes/show'

  get 'dashboard/show'

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  get 'bikes/mybikes' , to: 'bikes#mybikes'
  get 'bikes/mybookings' , to: 'bikes#mybookings'


  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bikes do
    resources :bookings, only: [:new, :create, :show, :index] do
      resources :reviews, only: [:new, :create, :show]
    end
  end



end
