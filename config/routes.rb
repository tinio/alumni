CfaAlumni::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :events


  resources :user, :only => [:show]

  match "alumni" => "alumni#index"
  match "alumni/:id" => "alumni#show", :as => "alumni_show"


  devise_for :users, :controllers => { :registrations => "registrations" }

  root :to => 'home#index'

end
