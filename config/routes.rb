Rails.application.routes.draw do
  root to: "candidates#index"
  resources :candidates do
  resources :issues
end
end 
