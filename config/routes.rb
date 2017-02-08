Rails.application.routes.draw do
  root :to => 'courses#index'

  resources :weeks, :only => [] do
    resources :lessons, :except => [:index]
  end

  resources :courses do
    resources :weeks, :except => [:index]
  end

end
