Rails.application.routes.draw do
  root 'grades#index'
 
  resources :grades, except: [:edit, :update, :destroy] do
    resources :students, except: [:destroy] do
      resources :scores
    end
  end

  resources :subjects, only: [:show, :new, :create]
end
