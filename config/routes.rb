require 'sidekiq/web'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/', to: 'users#getting_user_message'
  # post '/', to: 'users#getting_user_message'

  match '/', to: 'users#getting_user_message', via: %i[get post]

  mount Sidekiq::Web => '/sidekiq'
end
