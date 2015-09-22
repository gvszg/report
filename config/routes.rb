Rails.application.routes.draw do
  root 'gradeclasses#index'
 
  resources :gradeclasses do
    resources :students do
      resources :scores
    end
  end
  
  

  resources :subjects
end
