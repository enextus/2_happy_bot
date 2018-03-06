Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'users#get_user_message'

  post '/', to: 'users#get_user_message'

end
