Rails.application.routes.draw do
  root 'gradeclasses#index'
 
  resources :gradeclasses do
    resources :students
  end

  resources :subjects
end
