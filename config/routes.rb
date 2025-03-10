# Rails.application.routes.draw do
#   root "home#index"
#   devise_for :users
# end




Rails.application.routes.draw do
  root "home#index" # Your home page

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
end



