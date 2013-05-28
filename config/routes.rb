Feedme::Application.routes.draw do

  devise_for :users

  root :to => "/devise/#home"

  resources :users do
    resources :feeds
  end

end
