Rails.application.routes.draw do
  resources :weeks, :except => [:index, :new, :edit, :show, :update, :create, :destroy] do
    resources :lessons, :except => [:index]
  end

  resources :courses do
    resources :weeks, :except => [:index]
  end

end
