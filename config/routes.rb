require 'sidekiq/web'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'users#getting_user_message'

  # post '/', to: 'users#getting_user_message'

  mount Sidekiq::Web => '/sidekiq'

end
