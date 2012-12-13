CfaAlumni::Application.routes.draw do

  resources :user

  match "alumni" => "alumni#index"
  match "alumni/:id" => "alumni#show", :as => "alumni_show"

  devise_for :users

  root :to => 'home#index'

end
