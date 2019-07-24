require 'sidekiq/web'

Rails.application.routes.draw do
  # get '/', to: 'users#getting_user_message'
  # post '/', to: 'users#getting_user_message'

  match '/', to: 'users#getting_user_message', via: %i[get post]
  mount Sidekiq::Web => '/sidekiq'
end
