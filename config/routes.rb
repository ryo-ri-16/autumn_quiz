Rails.application.routes.draw do
  root "problem#index"
  resources :problems, only: [ :index, :show ] do
    member do
      post :answer
    end
  end
end
