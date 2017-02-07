Rails.application.routes.draw do
  resources :weeks do
    resources :lessons
  end

  resources :courses do
    resources :weeks, :except => [:index]
  end

end
